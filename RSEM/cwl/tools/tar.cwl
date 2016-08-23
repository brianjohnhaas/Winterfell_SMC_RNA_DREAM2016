#!/usr/bin/env cwl-runner

cwlVersion: "v1.0"

class: CommandLineTool

inputs:
  - id: index_name
    type: File
    inputBinding:
      position: 1

outputs:
  - id: output
    type: Directory
    outputBinding:
      glob: "RSEM_build"

baseCommand: [tar, xzvf]
