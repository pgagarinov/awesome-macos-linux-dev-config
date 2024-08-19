#!/bin/bash
set -e
# Check if krew is installed
if command -v krew &> /dev/null
then
    echo "krew is installed. Installing krew plugin..."
    krew install krew
    export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
else
    echo "krew is not installed. Please install krew first."
fi
kubectl krew install ns ctx
