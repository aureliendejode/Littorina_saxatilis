def get_tabtype_arg(wildcards):
    type = config["params"]["gatk"]["VariantsToTable"]
    for tabtype in type.split(","):
        return "-GF {}".format("AD" if wildcards.tabtype == "depth" else "GT")

rule table:
    input:
        "updated/all_supercontigs.sorted.vcf"
    output:
        "tables/all_contigs.vcf.{tabtype}.table"
    params:
        gatk=config["modules"]["gatk"],
        extra=get_tabtype_arg
    shell:
        """
        {params.gatk} --java-options '-Xmx4G' VariantsToTable \
        -V {input} -O {output} \
        -F CHROM -F POS -F TYPE -F REF -F ALT {params.extra}
        """

def get_cline_vartype(wildcards):
    return "{}".format("SNP" if wildcards.vartype == "snvs" else "INDEL")

rule run_cline:
    input:
        tab="tables/all_contigs.vcf.depth.table"
    output:
        "clines/CZCLI003_{vartype}_{zone}.txt"
    params:
        var=get_cline_vartype,
        czs=get_zones_names
    shell:
        """
        Rscript --vanilla ./scripts/czcli003_clines_20181005.R {input.tab} {wildcards.zone} {params.var} {output}
        """


def get_clineside_arg(wildcards):
    sides = config["params"]["rstudio"]["ClineSide"]
    sidetype = [i.split(',') for i in sides]
    return wildcards.sidetype

rule make_means:
    input:
        "clines/CZCLI003_{vartype}_{zone}.txt"
    output:
        "clines/CZCLI005_{vartype}_{zone}_{sidetype}_means.txt"
    params:
        extra=get_clineside_arg
    shell:
        """
        Rscript --vanilla ./scripts/czcli005_make_means_file.R \
        {input} {wildcards.zone} {wildcards.vartype} {params.extra} {output}
        """
