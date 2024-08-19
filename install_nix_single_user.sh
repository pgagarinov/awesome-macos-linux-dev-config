#!/bin/bash
sh <(curl -L https://nixos.org/nix/install) --no-daemon
cat << 'EOF' >> ~/.zshrc
# Nix package manager (per-user installation)
if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then
    . ~/.nix-profile/etc/profile.d/nix.sh
fi
EOF
