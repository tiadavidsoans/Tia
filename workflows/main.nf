#!/usr/bin/env nextflow

// Include the main workflow
include { TRIM_AND_QC } from './workflows/workflow.nf'

// Main workflow entry point
workflow {
    TRIM_AND_QC()
}
