#!/bin/bash
folder="/data/dataset/"

mkdir "${folder}/cutadapt2"

for i in $(ls ${folder}/fastq_files2/*.gz | xargs -n 1 basename | sed 's/\(.*\)_.*/\1/' | sed 's/\(.*\)_.*/\1/' | sort -u)

do
echo ${i}

# Cutadapt

(cutadapt -j 30 -m 159 ${folder}/fastq_files2/${i}_R1.fastq.gz ${folder}/fastq_files2/${i}_R2.fastq.gz -o ${folder}/cutadapt2/${i}_R1.fastq.gz -p ${folder}/cutadapt2/${i}_R2.fastq.gz)2>> ${folder}/cutadapt2/cutadapt.log

done
