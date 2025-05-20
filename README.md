# RNASeq_HISAT2_Gencode_hg38

These are the scripts used for RNA-Seq analysis of human transcriptome. The scripts are for alignment of raw reads using HISAT2 and Gencode hg38 genome. The scripts include indexing of the genome, generation of splice sites, filtration of reads, alignment, and assignment of raw reads. 

1. hisat2-build -p 12 Homo_sapiens.GRCh38.dna.primary_assembly.fa Homo_sapiens.GRCh38.dna.primary_assembly # This command creates an index for HISAT2
2. hisat2_extract_splice_sites.py Homo_sapiens.GRCh38.93.gtf > Homo_sapiens.GRCh38.93_splicesites.txt # This command creates the splice site information for HISAT2
3. 03_cutadapt2_Batch1_159.sh # Filter to retain 159 nt long reads
4. 03_cutadapt2_Batch1_159.sh # Filter to retain 151 nt long reads
5. hisa2_2.sh # Shell script to align filtered reads to Gencode hg38. 
6. e
7. f

For corresponce: satyajeetkhare@gmail.com
