!/bin/bash
set -e
sudo apt install zsh -y
grep -qxF 'export SHELL=$(which zsh)' ~/.bashrc || echo 'export SHELL=$(which zsh)' >>~/.bashrc
grep -qxF 'exec $SHELL' ~/.bashrc || echo '[ -n "$SSH_TTY" ] && exec $SHELL' >>~/.bashrc
