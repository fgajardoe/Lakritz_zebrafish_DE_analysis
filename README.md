# Lakritz zebrafish differential expression analysis.

This directory contains data and scripts used in the differential expression analysis between WT zebrafish and atoh7 -/- mutant (lakritz) reported by [Covello _et al_](#Cite).

## Relevant files

+ `differential-expression-analysis/004_original_marray_annotated_sample_log2.csv` contains normalised _log2_ intensities used for DE analysis in comma-separated format.
+ `differential-expression-analysis/Original_Marray_list.xls` contains an Excel table with normalised _log2_ intensities including probe annotations.
+ `probe-gene-assignment/significant.annotated.tsv` contains the final version of the table with DE probes, including Gene names and Ensembl gene IDs. It is in tab-separated format.
+ `probe-gene-assignment/Full-Table.xlsx` contains the same data than `significant.annotated.tsv`, but in Excel format.

## Cite

+ Giuseppina Covello, Fernando J. Rossello, Michele Filosi, Felipe Gajardo, Anne-Laure Duchemin, Beatrice F. Tremonti, Michael Eichenlaub, Jose M. Polo, David Powell, John Ngai, Miguel L. Allende, Enrico Domenici, Mirana Ramialison and Lucia Poggi (2020) **Transcriptome analysis of the zebrafish atoh7-/- mutant, lakritz, highlights Atoh7-dependent genetic networks with potential implications for human eye diseases**. _Accepted at FASEB BioAdvances._
