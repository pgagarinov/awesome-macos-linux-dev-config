#!/bin/bash
set -e
SCRIPT_DIR=$(dirname "$0")

# Filter out comment lines and empty lines
PACKAGES=$(grep -vE '^\s*#|^\s*$' "$SCRIPT_DIR/system_packages.list" | sed 's/#.*//')

brew install $PACKAGES

broot --install # this is the additional step required after installing broot via homebrew
