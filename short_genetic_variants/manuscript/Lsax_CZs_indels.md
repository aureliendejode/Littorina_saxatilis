---
title: "INDELs as genetic markers for local adaptation"
date: "6th September 2019"
author: "Samuel Perini et al."
---

# Questions  
Can short INDELs be used as additional genetic markers for patterns of local adaptation and ecological speciation?  
How does the pattern of INDEL variation differ from the one of SNP variation in _L. saxatilis_? (compare site frequency spectra and Tajima’s D, outlier positions, correlation of density per window)?  
Do short INDELs reveal the same patterns as SNPs?  
Results from SNPs:  
*	Clines in a high proportion of markers  
* Repeatable across transects  
*	Rare alternative fixations  
*	Displacement of clines into wave habitat  
*	Low differentiation overall  
*	Similar SFS  
*	Genomic clustering in inversions and regions of low recombination

EXTRA: Are non-synonymous SNPs flanked by frameshift INDELs (epistasis)?

# Hypothesis  
Nucleotide diversity between locally adapted populations can be captured using single nucleotide polymorphisms (SNPs) because these can be reliable genetic markers for both demographic and selective processes. Most SNPs are often assumed to be effectively neutral and so reflect demography or gene flow, while a small proportion, typically referred as outliers, is found to be in physical proximity with the targets of natural selection and so behave as if it underwent the action of natural selection.  
When aiming to call SNPs, short INDELs are also captured but with less confidence and at a rate that is two times lower than SNPs due to a higher probability of negative fitness effects (Clark et al. 2007). Also, the average effect size for INDELs is higher compared to SNPs. For these reasons, short INDELs are often discarded because they may not provide sufficient and reliable information for the study of population divergence dynamics. However, short INDELs can be accurately detected and they can still be subject to the same population genomic processes as SNPs because many will also be effectively neutral and some can also be adaptive (or locally adaptive). For instance, short INDELs showed a lower false discovery rate than larger ones (Massouras et al. 2012) and fixed differences between closely related species as well as polymorphisms within species can be composed of a higher percentage of short INDELs than SNPs (Britten 2002; Britten et al. 2003). Therefore, the advantage of including INDELs as additional genetic markers is twofold: it can provide more information by increasing the number of genetic markers and it can also reduce the risk of missing significant adaptive variants.

# Introduction  
1. 1.	Diversity between populations can be measured at the DNA level and it often consists of a heterogenous architecture. Genetic variants differ in size and in their frequency, from millions of single nucleotide polymorphisms (SNPs) down to one whole genome duplication. There seems to be a general concordance among genetic studies that different species and also distinct forms of the same species (ecotypes) differ for a greater number of SNPs than for longer variants such as inversions and duplications. The explanation behind this observation is almost intuitive, large modifications to an already functional system are more likely to cause damage than small ones and thus, they will be maintained at a lower frequency (Massouras et al. 2012). On average, long structural variants may affect a greater number of base pairs than point mutations which can correspond to a higher risk of disrupting the function of a protein. If one or more proteins are modified, the effects on the fitness are most likely deleterious and these substitutions will be purged out by the action of purifying selection. Nevertheless, there are examples of non-SNP variants that are maintained by either positive selection, as for human-specific indels with a putative role in promoting RNA and protein level changes (Chen et al. 2007), or balancing selection, as for most of the inversions in _Drosophila melanogaster_ [@kapun2016; @wallace2013; see @wellenreutherandbernatchez2018 for a review on inversions].

1. Originally, mutations were detected using (first method of variant calling) and now, after the emergence of high-throughput and next-generation sequencing technologies, it is affordable to scan whole genomes in search for different types and lengths of mutations. Single nucleotide polymorphisms (SNPs) have been primary targets of genetic and genomic analyses that aimed to ... (applications for SNPs [@chen2009; @brumfield2003; @morin2004]). Few studies have also expanded their analysis to other types of genetic variants in order to establish a more extensive catalog of genomic variation for the inverstigation of patterns of evolutionary change [specialissuesvs; @chakraborty2018]. In particular, studies on short insertions and deletions (INDELs $\leq$ 50 bp) ... [@chen2009; @bartonandzeng2019]. Therefore, evolutionary geneticists have already acknowledged the role of INDELs in respect to ... [@chen2009] but our knowledge is still limited to a few model species.

1. Studies on humans [@10002010] ... and other model species [livestock @kang2015]... were the first ones to assess INDEL variation and they were also the first ones to encounter the challenges associated with INDEL discovery [@vali2008; @onishi2011]. Mapping algorithms deal poorly with long INDELs and with repeated motifs [@narzisiandschatz2015]. False-negatives and false-positives can be generated when coverage distribution is not uniform or the efficiency of targeted resequencing is not even across the queried regions of the genome [@fang2016]. Currently, the best practice is to ... [GATK best practice; @li2018 and more].

1. Calling INDELs and SNPs have revealed the tendency for these variants to form clusters along the genome and for this reason combining INDELs and SNPs can increase the power to analyse a certain evolutionary pattern [@huang2014 for a list of studies about SNPs and INDELs clustering]. The major histocompatibility complex in birds is one example where an excess of non-synonymous substitutions corresponded to an increase in frequency of deletions [@minias2018]. Other examples involve ... [swine @kang2015; fruit fly @huang2014]. This co-occurrence of SNPs and INDELs along the genome can be a consequence of three different mechanisms [@jovelinandcutter2013; @huang2014]. INDELs themselves can be mutagenic (the eukaryote genome contains mutation hotspots where the occurrence of an INDEL may have increased the rate of nucleotide substitution in its sorrounding [@tian2008]; the numerous forms of the major histocompatibility complex in vertebrates might have originated under this mechanism [@minias2018]), the regions where they fall can be mutagenic and/or the same evolutionary processes operate on both INDELs and SNPs.  
On the other hand, INDEL variation can carry unique information on how different species or distinct populations of the same species have evolved diverse genomes [@gregory2004]. In fact, INDELs are typically employed in studies of genome evolution because ... [@bartonandzeng2018; @bartonandzeng2019; @hollister2009; @petrov2000; @huang2014 but see @ellis2014]. Furthermore, there is evidence for INDELs to have induced the development of human specific traits [@chen2007] and contributed to phenotypic variance in the fission yeast by interfering at the gene regulatory level [@jeffares2015]. More studies on intraspecific INDEL variation [@chen2019]. In principle, intraspecies variation of INDEL density along the genome may represent a significant source of genetic variation, part of it being adaptive and involved in the process of local adaptation and ecological speciation.

1. SNP-based study and genome scan [@galindo2010; @westram2018] in _Littorina saxatilis_, species biology and results.

# Materials and methods  
Called variants including outgroup as this allows to polarise those mutations that are fixed between species and polymorphic between ecotypes of the same species.

EXTRA: Phasing data using pair-end reads to obtain haplotype sequences and be able to measure haplotype diversity. Mutations are expected to accumulate nearby frameshift INDEL if this is beneficial (shelter load).

# Results

# Discussion  
This work represents the first systematic description of small insertion/deletion _L. saxatilis_ polymorphism data in relation to functional and evolutionary annotation, which complements larger scale structural variation data across the genome [@faria2019]. In order to understand the potential contribution made by indels to genetic variation in our system, we contrasted indel rates by functional annotation features and we compared indel and SNP rates and their relative pattern of distribution across genomic features.

The presented variant collection constitutes a useful resource for several scientific disciplines, including phylogenetics and gene expression, which are beyond the scope of this study. Here, we applied this resource to study adaptive divergence (and demography) using not only SNPs but also short INDEL polymorphisms.

# References  
