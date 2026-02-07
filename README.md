# Nextflow Bioinformatics Pipeline

A Nextflow-based bioinformatics pipeline for read quality control, trimming, alignment, and variant calling.

## Overview

This pipeline performs the following steps:

1. **Quality Control** - Assess read quality using FASTQC
2. **Adapter Trimming** - Remove adapter sequences using CUTADAPT
3. **Alignment** - Align reads to reference genome using BWA
4. **Variant Calling** - Identify variants using BCFtools

## Pipeline Structure

```
nf-pipeline/
├── main.nf                 # Entry point
├── nextflow.config         # Pipeline configuration
├── bioinfo.yml            # Conda environment specification
├── README.md              # This file
├── .gitignore             # Git ignore rules
├── workflows/
│   └── workflow.nf        # Main workflow definition
└── modules/
    ├── fastqc.nf          # FASTQC module
    ├── cutadapt.nf        # CUTADAPT module
    ├── alignment.nf       # BWA alignment module
    └── variant_calling.nf # BCFtools variant calling module
```

## Requirements

- [Nextflow](https://www.nextflow.io/) >= 21.04.0
- [Conda](https://conda.io/) with the `bioinfo` environment
- Docker or Singularity (optional, for containerized execution)

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/tiadavidsoans/NF-PIPLINE
   cd nf-pipeline
   ```

2. Create the Conda environment:
   ```bash
   conda env create -f bioinfo.yml
   conda activate bioinfo
   ```

3. Install Nextflow:
   ```bash
   curl -s https://get.nextflow.io | bash
   ```

## Configuration

Edit `nextflow.config` to customize:
- Resource allocations (CPU, memory)
- Container engine settings (Docker/Singularity)
- Execution profile (local, SLURM, etc.)
- Parameters and paths

## Usage

### Basic Execution

```bash
nextflow run main.nf
```

### With Custom Configuration

```bash
nextflow run main.nf -c nextflow.config
```

### With Docker

```bash
nextflow run main.nf -profile docker
```

### With Singularity

```bash
nextflow run main.nf -profile singularity
```

## Input Data

Configure input data in `nextflow.config` or pass as parameters:

| Parameter | Description |
|-----------|-------------|
| `input` | Path to input files (FASTQ) |
| `outdir` | Output directory |
| `reference` | Reference genome path |

Example:
```bash
nextflow run main.nf --input 'data/*.fastq.gz' --outdir results --reference ref/genome.fasta
```

## Output

Results will be saved to the specified output directory:

```
outdir/
├── fastqc/           # FASTQC reports
├── cutadapt/         # Trimmed reads
├── alignment/        # Aligned BAM files
└── variant_calling/  # VCF files
```

## Pipeline Steps

### 1. Quality Control (FASTQC)
Generates quality reports for raw sequencing reads.

### 2. Adapter Trimming (CUTADAPT)
Removes adapter sequences and low-quality bases from reads.

### 3. Alignment (BWA)
Aligns trimmed reads to the reference genome using BWA-MEM algorithm.

### 4. Variant Calling (BCFtools)
Calls variants from aligned reads using BCFtools mpileup.

## Troubleshooting

- Ensure all required tools are installed and available in PATH
- Check Nextflow logs for detailed error messages
- Verify input file paths and formats
- Ensure sufficient disk space and memory allocation

## License

This pipeline is distributed under the MIT License.

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request
