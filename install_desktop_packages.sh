#!/bin/bash
set -e

MSGCOLOR=`tput setaf 3`
NOCOLOR=`tput sgr0`
export NIXPKGS_ALLOW_UNFREE=1

printf "${MSGCOLOR}INSTALLING DESKTOP PACKAGES...${NOCOLOR}\n"

SCRIPT_DIR=$(dirname "$0")
PACKAGES=$(grep -vE '^\s*#|^\s*$' "$SCRIPT_DIR/desktop_packages.list" | sed 's/#.*//')
# Create a new string with each package prefixed with "nixpkgs."
PREFIXED_PACKAGES=$(for pkg in $PACKAGES; do echo -n "nixpkgs.$pkg "; done)
nix-env -iA $PREFIXED_PACKAGES

printf "${MSGCOLOR}INSTALLING DESKTOP PACKAGES: done${NOCOLOR}\n"
