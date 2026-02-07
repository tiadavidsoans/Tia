process ALIGNMENT {
    publishDir "${params.output}/alignment", mode: 'copy'

    input:
    path trimmed_fastq
    path reference

    output:
    path "*.bam"

    script:
    """
    bwa mem \
        ${params.bwa_index} \
        ${trimmed_fastq} \
        | samtools view -bS - > ${trimmed_fastq.baseName}.bam
    """
}
