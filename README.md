# Winterfell_SMC_RNA_DREAM2016


## example running isoform test

cwl-runner --debug --cachedir `pwd`/cwl-cache ~/Winterfell_SMC_RNA_DREAM2016/RSEM/cwl/workflow/smcIsoform-rsem-workflow.cwl `pwd`/rsem_inputs.json


## packaging for submission

cwltool --pack Winterfell_SMC_RNA_DREAM2016/RSEM/cwl/workflow/smcIsoform-rsem-workflow.cwl > smcIsoform.Winterfell.packed.cwl

