#!/bin/bash
set -e

MSGCOLOR=`tput setaf 3`
NOCOLOR=`tput sgr0`

full_path=$(realpath $0)
dir_path=$(dirname $full_path)

printf "${MSGCOLOR}INSTALLING SYSTEM PACKAGES...${NOCOLOR}\n"

SCRIPT_DIR=$(dirname "$0")

# Filter out comment lines and empty lines
PACKAGES=$(grep -vE '^\s*#|^\s*$' "$SCRIPT_DIR/system_packages.list" | sed 's/#.*//')

brew install $PACKAGES

printf "${MSGCOLOR}INSTALLING SYSTEM PACKAGES: done${NOCOLOR}\n"
