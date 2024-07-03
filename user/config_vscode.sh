#!/bin/bash
set -e

SCRIPT_DIR=${SCRIPT_DIR:-$(dirname "$0")}

PACKAGES=$(grep -vE '^\s*#|^\s*$' "$SCRIPT_DIR/config/vscode_extensions.list" | sed 's/#.*//')

for package in $PACKAGES; do
  echo "Installing VSCode extension: $package"
  code --install-extension $package
done
