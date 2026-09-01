#!/bin/bash

source ~/.bashrc
conda activate cellbender

cellbender remove-background \
  --input $1"/outs/raw_feature_bc_matrix.h5" \
  --output $(basename $1)"_cellbender_output.h5" \
  --cuda

# "/group/tran3/avarsh/2025_fish/cellbender/counts_GCF_043380555_1/$(basename "$1")_cellbender_output.h5"