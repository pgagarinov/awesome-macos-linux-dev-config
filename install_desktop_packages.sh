#!/bin/bash
set -e

MSGCOLOR=`tput setaf 3`
NOCOLOR=`tput sgr0`

printf "${MSGCOLOR}INSTALLING DESKTOP PACKAGES...${NOCOLOR}\n"

SCRIPT_DIR=$(dirname "$0")
PACKAGES=$(grep -vE '^\s*#|^\s*$' "$SCRIPT_DIR/desktop_packages.list" | sed 's/#.*//')
brew install $PACKAGES

printf "${MSGCOLOR}INSTALLING DESKTOP PACKAGES: done${NOCOLOR}\n"
