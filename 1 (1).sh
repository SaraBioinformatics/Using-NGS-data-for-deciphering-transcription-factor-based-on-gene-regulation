cat l1  | while read i ;do cd $i ; cat *.bed |awk '{print $0"\t+"}' >$i.txt ; cd .. ;done
cat l1  | while read i ;do cd $i ; bedtools sort -i $i.txt |mergeBed -i -  >$i\_sort.bed ; cd .. ;done

cat l1  | while read i ;do cd $i ; bedtools intersect -a /home/scbb/Documents/Dissertation_sarita/Chipseq/samtools_out/macs2_out/7.bed -b $i\_sort.bed >$i\_intesect.bed ;cd .. ;done


 cat one_intesect.bed |awk '{print $4}' |sort |uniq > uniq_MYC2
 cat two_intesect.bed |awk '{print $4}' |sort |uniq > uniq_MYC3
 cat thre_intesect.bed |awk '{print $4}' |sort |uniq > uniq_STZ_AIR
 cat four_intesect.bed |awk '{print $4}' |sort |uniq > uniq_STZ_JA
 cat five_intesect.bed |awk '{print $4}' |sort |uniq > uniq_ANAC055


