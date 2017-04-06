#!/usr/bin/env cwl-runner
#
# Authors: Thomas Yu, Ryan Spangler, Kyle Ellrott
#    modified by bhaas

cwlVersion: "v1.0"
class: Workflow



hints:
  - class: synData
    input: index
    entity: syn8276396

inputs: 
  index: File
  TUMOR_FASTQ_1: File
  TUMOR_FASTQ_2: File
    
outputs:

  OUTPUT:
    type: File
    outputSource: convert/output

steps:

  gunzip1:
    run: ../tools/gunzip.cwl
    in:
      input: TUMOR_FASTQ_1
    out: [output]

  gunzip2:
    run: ../tools/gunzip.cwl
    in:
      input: TUMOR_FASTQ_2
    out: [output]

  tar:
    run: ../tools/tar.cwl
    in:
      index_name: index
    out: [output]

  rsem:
    run: ../tools/rsem.cwl
    in:
      index: tar/output
      fastq1: gunzip1/output
      fastq2: gunzip2/output
      output_filename: { default: "rsemOut" }
      threads: { default: 8 }
      pairedend: { default: true }
      strandspecific: { default: true }
      bowtie2: { default: true }
      correct_GC_bias_quantile: { default: true }
    out: [output]

  convert:
    run: ../tools/cut.cwl
    in:
      isoforms: rsem/output
      output_filename: { default: "isoform_quant.tsv" }
      f: { default: "1,6" }
    out: [output]

