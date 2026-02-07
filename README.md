# NF-Pipeline

A Nextflow-based bioinformatics pipeline for quality control, trimming, alignment, and variant calling of FASTQ sequencing files.

---

## Description

This pipeline is designed for processing next-generation sequencing (NGS) data. It automates the complete analysis workflow from raw sequencing reads to variant discovery.

The pipeline performs the following steps:
- FASTQC: Quality control analysis of raw reads
- CUTADAPT: Adapter and low-quality base trimming
- BWA-MEM: Alignment of reads to a reference genome
- BCFtools: Variant calling (SNP/Indel detection)

---

## Prerequisites

- Nextflow
- Conda for environment management
- Tools:
  - FastQC
  - CUTADAPT
  - BWA
  - Samtools
  - BCFtools

---

## Installation

```bash
# Clone the repository
git clone https://github.com/tiadavidsoans/nf-pipeline
cd nf-pipeline

# Create Conda environment
conda env create -f environment.yml

# Activate the environment
conda activate bioinfo


