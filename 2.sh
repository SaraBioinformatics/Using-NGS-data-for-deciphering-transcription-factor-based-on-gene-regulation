data - Accession no - GSE80564(organism -Arabidopsis thaliana)
TF Name-
ABF1 (3 replicates(3 reads file ))
ABF3 (3 replicates)
ABF4 (3 replicates)
ANAC023 (3 replicates)
ANAC102 (2 replicats) 

2) intersect second five(TF)  
cat l2  | while read i ;do cd $i ; bedtools sort -i $i.txt |mergeBed -i -  >$i\_sort.bed ; cd .. ;done


cat lis | while read i ; do bedtools sort -i $i > $i\_sort.bed && bedtools merge -i $i\_sort.bed > merge.bed ; done(ls *.bed > list.bed)
cat list.bed | while read i ; do bedtools sort -i $i > $i\_sort.bed && bedtools merge -i $i\_sort.bed > ABF1_merge.bed ; done
cat list.bed | while read i ; do bedtools sort -i $i > $i\_sort.bed && bedtools merge -i $i\_sort.bed > ABF3_merge.bed ; done
cat list.bed | while read i ; do bedtools sort -i $i > $i\_sort.bed && bedtools merge -i $i\_sort.bed > ABF4_merge.bed ; done
cat list.bed | while read i ; do bedtools sort -i $i > $i\_sort.bed && bedtools merge -i $i\_sort.bed > ANAC032_merge.bed ; done
cat list.bed | while read i ; do bedtools sort -i $i > $i\_sort.bed && bedtools merge -i $i\_sort.bed > ANAC102_merge.bed ; done
intersect second five(TF) *.sort.bed file
use cammand - cat l2  | while read i ;do cd $i ; bedtools intersect -a ../7_mod1.bed -b $i\_sort.bed > $i\_intesect.bed ;cd .. ;done




(gtf - 
cat 7.bed |sed "s/NC_003070.9/Chr1/g" | sed "s/NC_003071.7/Chr2/g" | sed "s/NC_003074.8/Chr3/g" | sed "s/NC_003075.7/Chr4/g" | sed "s/NC_003076.8/Chr5/g"  | head
cat 7.bed |sed "s/NC_003070.9/Chr1/g" | sed "s/NC_003071.7/Chr2/g" | sed "s/NC_003074.8/Chr3/g" | sed "s/NC_003075.7/Chr4/g" | sed "s/NC_003076.8/Chr5/g"  > 7_mod.bed
cat 7_mod.bed |grep -P -i "Chr*" > 7_mod1.bed)



(Chr	1	NC_003070.9	
Chr	2	NC_003071.7	
Chr	3	NC_003074.8	
Chr	4	NC_003075.7	
Chr	5	NC_003076.8	
MT	        NC_037304.1	
Pltd	        NC_000932.1) 
sample_count_test.rpkm |grep AT1G77450

cat ABF1_intesect.bed |awk '{print $4}' |sort |uniq > ABF1

cat ABF3_intesect.bed |awk '{print $4}' |sort |uniq > uniq_ABF3
cat ABF4_intesect.bed |awk '{print $4}' |sort |uniq > uniq_ABF4


cat ANAC032_intesect.bed |awk '{print $4}' |sort |uniq > uniq_ANAC032
 cat ANAC102_intesect.bed |awk '{print $4}' |sort |uniq > uniq_ANAC102
 
