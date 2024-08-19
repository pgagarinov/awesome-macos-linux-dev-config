#!/bin/bash
set -e
micromamba shell init -s zsh # 
micromamba shell init -s zsh -p ~/micromamba # this is required - see https://formulae.brew.sh/formula/micromamba
micromamba install conda -n base -c conda-forge -y # this is to make conda executable being available by default
echo -e "channels:\n  - conda-forge\nchannel_priority: strict" > ~/.condarc # this is to make sure that when we write `conda install ` it will install from conda-forge by default
