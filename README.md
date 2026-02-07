# Nextflow Pipeline

This repository contains a basic Nextflow DSL2 pipeline.

## Description
The pipeline performs quality control on FASTQ files using FastQC.

## Directory structure
Tia/
├── main.nf
├── nextflow.config
├── modules/
│   └── fastqc.nf
└── data/
    └── sample.fastq


## Requirements
- Nextflow
- Java
- FastQC

## How to run
```bash
nextflow run main.nf

