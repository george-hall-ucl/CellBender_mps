#!/bin/bash

# Example run:
# $ ./run_usual_benchmarks.sh "v0.2.1"

GIT_HASH=$1

# 10x Genomics pbmc8k
python run_benchmark.py \
    --git $GIT_HASH \
    --input "gs://broad-dsde-methods-sfleming/cellbender_test/pbmc8k_raw_gene_bc_matrices.h5" \
    --sample pbmc8k

# 10x Genomics hgmm12k
python run_benchmark.py \
    --git $GIT_HASH \
    --input "gs://broad-dsde-methods-sfleming/cellbender_test/hgmm_12k_raw_gene_bc_matrices.h5" \
    --sample hgmm12k

# 10x Genomics pbmc5k CITE-seq
python run_benchmark.py \
    --git $GIT_HASH \
    --input "gs://broad-dsde-methods-sfleming/cellbender_test/5k_pbmc_protein_v3_nextgem_raw_feature_bc_matrix.h5" \
    --sample pbmc5k

# Broad PCL rat6k
python run_benchmark.py \
    --git $GIT_HASH \
    --input "gs://broad-dsde-methods-sfleming/cellbender_test/PCL_rat_A_LA6_raw_feature_bc_matrix.h5" \
    --sample rat6k

# Simulation s4
python run_benchmark.py \
    --git $GIT_HASH \
    --input "gs://broad-dsde-methods-sfleming/cellbender_test/s4.h5" \
    --truth "gs://broad-dsde-methods-sfleming/cellbender_test/s4_truth.h5" \
    --sample s4
