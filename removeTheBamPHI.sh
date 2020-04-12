#!/bin/bash
# Name - removeTheBamPHI.sh
# Purpose - Remove potentially identifiable sequencing data from bam files. 
# Author - Kevin Brulois
# Dependencies - samtools, awk

f="$(basename -- $1)"
f="${f%.*}"
out="${f}_deid.bam"

p="samtools view $1 -h | awk 'BEGIN {OFS=\"\t\"}; /^@/{print \$"0";next}{gsub(/./, \"*\", \$"10"); print \$"0"}' | samtools view -b - > $out"

eval "$p"

samtools index $out