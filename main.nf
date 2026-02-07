nextflow.enable.dsl=2

include { fastqc } from './modules/fastqc.nf'

workflow {
    fastqc(params.fastq)
}
