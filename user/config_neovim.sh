#!/bin/bash
set -e
BAK_EXTENSION=.bak.$(date +%Y%m%d%H%M%S)
mv ~/.config/nvim{,$BAK_EXTENSION} || true
mv ~/.local/share/nvim{,$BAK_EXTENSION} || true
mv ~/.local/state/nvim{,$BAK_EXTENSION} || true
mv ~/.cache/nvim{,$BAK_EXTENSION} || true

full_path=$(realpath $0)
dir_path=$(dirname $full_path)
cp -r $dir_path/config/.config/nvim ~/.config
