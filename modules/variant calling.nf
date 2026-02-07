process VARIANT_CALLING {
    publishDir "${params.output}/variant_calling", mode: 'copy'

    input:
    path bam_file
    path reference

    output:
    path "*.vcf"

    script:
    """
    bcftools mpileup -Ou -f ${reference} ${bam_file} | bcftools call -vmO v -o ${bam_file.baseName}.vcf
    """
}
