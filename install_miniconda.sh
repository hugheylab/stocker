#!/bin/bash
set -e

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh -b -p ~/miniconda3
# rm Miniconda3-latest-Linux-x86_64.sh
~/miniconda3/bin/conda init bash

source ~/miniconda3/etc/profile.d/conda.sh
conda config --set auto_activate_base false
conda activate

conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge

conda install mamba -c conda-forge
