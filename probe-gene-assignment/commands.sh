# Here we parsed Gene names, Ensemble gene IDs and marked probes as significant or not significant
awk 'BEGIN{while(getline < "gene-names.tsv"){geneName[$3]=$2; ensID[$3]=$1}}{if(ensID[$1]==""){ens="ID_NOT_FOUND"}else{ens=ensID[$1]}; if(geneName[$1]==""){gene="GENE_NAME_NOT_FOUND"}else{gene=geneName[$1]}; if($6<0.05){sig="SIGNIFICANT"}else{sig="NOT_SIGNIFICANT"};  print $0"\t"ens"\t"gene"\t"sig}' all.tsv | tail -n +2| cat header.txt - > all.annotated.tsv

# And built a table for significant probes only
#(here we lost the previous header, so we add a new one)
grep -Pe'\tSIGNIFICANT' all.annotated.tsv|cat header.txt - > significant.annotated.tsv



# # # Some important numbers # # #


# Number of significant differentially expressed (DE) genes
cat significant.annotated.tsv|grep -v logFC |wc -l
# 171

# Number of probes successfully assigned to genes DE
cut -f9 significant.annotated.tsv |grep -vPe 'GENE_NAME_NOT_FOUND|GENE_NAME' |wc -l 
# 144


# Number of genes DE
cut -f9 significant.annotated.tsv |grep -vPe 'GENE_NAME_NOT_FOUND|GENE_NAME' |sort -u |wc -l 
# 137
