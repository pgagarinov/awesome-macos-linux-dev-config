- some packages are missing - commented out
- docker needs to be installed following the official instructions - see https://docs.docker.com/engine/install/ubuntu/
- shell needs to be changed to zsh manually via `sudo apt install zsh` and then changed via `chsh -s /bin/zsh`
- nix initialization needs to be added to ~/.zshrc
```bash
# Nix package manager (per-user installation)
if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then
    . ~/.nix-profile/etc/profile.d/nix.sh
fi
```
- krew requires running `krew install krew` and then shell needs to be restarted
after addin `export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"` to `.zshrc`
- jenv needs to be installed manually via `git clone https://github.com/jenv/jenv.git ~/.jenv`
- molecule-plugin had to be commented out but it seems to be missing on MacOS as well
- a plugin for OpenLens (on AMDx86_64) needs to be installed manually via - https://github.com/alebcay/openlens-node-pod-menu
- Meslo font needs to be additionally configured - see  https://stackoverflow.com/a/68972770

