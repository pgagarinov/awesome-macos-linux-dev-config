#!/bin/bash
set -e
SCRIPT_DIR=$(dirname "$0")
PACKAGES=$(grep -vE '^\s*#|^\s*$' "$SCRIPT_DIR/system_packages.list" | sed 's/#.*//')
brew install $PACKAGES
