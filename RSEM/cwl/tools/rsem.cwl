#!/usr/bin/env cwl-runner

cwlVersion: "v1.0"

class: CommandLineTool

requirements:
  - class: InlineJavascriptRequirement
  - class: DockerRequirement
    dockerPull: winterfelldream2016/expressionpipe:rsem_beta_v3
  - class: ResourceRequirement
    coresMin: 8
    ramMin: 80000

inputs:

  - id: index
    type: Directory

  - id: fastq1
    type: File
    inputBinding:
      position: 2

  - id: fastq2
    type: File
    inputBinding:
      position: 2

  - id: pairedend
    type: ["null",boolean]
    inputBinding:
      position: 0
      prefix: --paired-end

  - id: strandspecific
    type: ["null",boolean]
    inputBinding:
      position: 0
      prefix: --strand-specific

  - id: rspd
    type: ["null",boolean]
    inputBinding:
      position: 0
      prefix: --estimate-rspd

  - id: correct_GC_bias
    type: ["null",boolean]
    inputBinding:
      position: 0
      prefix: --correct-GC-bias

  - id: correct_GC_bias_quantile
    type: ["null",boolean]
    inputBinding:
      position: 0
      prefix: --correct-GC-bias-quantile

  - id: bowtie2
    type: ["null",boolean]
    inputBinding:
      position: 0
      prefix: --bowtie2

  - id: threads
    type: ["null",int]
    inputBinding:
      prefix: -p
      position: 1
  
  - id: output_filename
    type: string
    inputBinding:
      position: 4



outputs:
  - id: output
    type: File
    outputBinding:
      glob: $(inputs.output_filename + '.isoforms.results')


baseCommand: [rsem-calculate-expression]
arguments:
  - valueFrom: $(inputs.index.path + "/Homo_sapiens.GRCh37.75.gtf.inPrimary.gtf.cdna")
    position: 3
