- some packages are missing - commented out
- docker needs to be installed following the official instructions - see https://docs.docker.com/engine/install/ubuntu/
- on AWS workspaces (Ubuntu) the GUI user is different from local Linux user, as a result - sudo usermod -aG docker $USERNAME doesn't work
a temporary fix is to use `sudo usemod 666 /var/run/docker.sock`
- shell needs to be changed to zsh manually via `sudo apt install zsh` and then changed via `chsh -s /bin/zsh`
- in AWS Workspaces (Ubuntu) chsh doesn't work, see: https://docs.aws.amazon.com/workspaces/latest/adminguide/manage_ubuntu_workspace.html#override_default_shell_ubuntu
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
- Meslo font needs to be additionally configured - see 
https://stackoverflow.com/a/68972770
