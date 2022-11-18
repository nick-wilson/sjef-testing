#!/bin/sh
e=pymolpro
source $HOME/anaconda3/etc/profile.d/conda.sh
conda create -n $e --no-default-packages && \
conda install -y -c conda-forge -n $e pymolpro
