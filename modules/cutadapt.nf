process CUTADAPT {
    publishDir "${params.output}/cutadapt", mode: 'copy'

    input:
    path file

    output:
    path "*.trimmed.fastq.gz"

    script:
    """
    cutadapt \
        -a ${params.adapter} \
        -o ${file.baseName}.trimmed.fastq.gz \
        ${file}
    """
}
