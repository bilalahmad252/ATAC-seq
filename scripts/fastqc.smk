# FASTQC quality check
# Rule to specify concrete files for the workflow
rule all:
    input:
        expand("/homes/bilala/BedTools/Chipseq_2024/results/FASTQC/{sample}_fastqc.html", sample=glob_wildcards("/homes/bilala/BedTools/Chipseq_2024/raw_data/{sample}.fastq").sample),
        expand("/homes/bilala/BedTools/Chipseq_2024/results/FASTQC/{sample}_fastqc.zip", sample=glob_wildcards("/homes/bilala/BedTools/Chipseq_2024/raw_data/{sample}.fastq").sample)

rule fastqc:
    input:
        "/homes/bilala/BedTools/Chipseq_2024/raw_data/{sample}.fastq"
       
    output:
        html="/homes/bilala/BedTools/Chipseq_2024/results/FASTQC/{sample}_fastqc.html",
        zip="/homes/bilala/BedTools/Chipseq_2024/results/FASTQC/{sample}_fastqc.zip"
        
    shell:
        "fastqc {input}  -o  /homes/bilala/BedTools/Chipseq_2024/results/FASTQC"

