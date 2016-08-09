#!/usr/bin/env cwl-runner

cwlVersion: "v1.0"

class: CommandLineTool

inputs:
  - id: index
    type: File
    inputBinding:
      position: 1

outputs:
  - id: output
    type: Directory
    outputBinding:
      glob: "rsem_references"

baseCommand: [tar, xzvf]
