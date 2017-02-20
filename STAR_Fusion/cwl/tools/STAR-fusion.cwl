#!/usr/bin/env cwl-runner

cwlVersion: "v1.0"

class: CommandLineTool

requirements:
  - class: InlineJavascriptRequirement
  - class: DockerRequirement
    dockerPull: winterfelldream2016/fusionpipe:0.0.2

inputs:

  - id: index
    type: Directory


  - id: J
    type: File
    inputBinding:
      prefix: -J
      position: 1

  - id: output_dir
    type: string
    inputBinding:
      prefix: --output_dir
      position: 2

  - id: threads
    type: ["null",int]
    inputBinding:
      prefix: --CPU
      position: 2

  - id: min_sum_frags
    type: ["null",int]
    inputBinding:
      prefix: --min_sum_frags
      position: 2


outputs:
  - id: output
    type: File
    outputBinding:
      glob: $(inputs.output_dir+'/star-fusion.fusion_candidates.final.abridged')

baseCommand: [STAR-Fusion]
arguments:
  - valueFrom: $(inputs.index.path)
    prefix: --genome_lib_dir
    position: 0
