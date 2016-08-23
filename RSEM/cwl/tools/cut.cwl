#!/usr/bin/env cwl-runner

cwlVersion: "v1.0"

class: CommandLineTool


inputs:

  - id: isoforms
    type: File
    inputBinding:
      position: 1

  - id: output_filename
    type: string

  - id: f
    type: string
    inputBinding:
      position: 0
      prefix: -f

outputs:
  - id: output
    type: File
    outputBinding:
      glob: $(inputs.output_filename)

stdout: $(inputs.output_filename)

baseCommand: [cut]
