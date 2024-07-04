# Awesome MacOS configuration scripts
This repository contains an collection of bash scripts that I use to configure my MacOS to feel as close as possible to a Linux system (Arch Linux with KDE Plasma) that I also use. The scripts are intended to be run on a fresh MacOS installation. The scripts are idempotent and can be run multiple times without causing any issues.

for 
  - Productive work in a terminal (iterm2, Zsh, Oh-My-Zsh, Powerlevel10k, FZF, Bat, Lsd, NeoVim+LazyVim, Broot,...)
  - Software Development in Python (Jupyter, Micromamba, VSCode + Extensions, pgAdmin, DBeaver,...)
  - Software Development in TypeScript (VScode + Extensions, Node.js, NPM)
  - DevOps (AWS, Docker, Kubernetes)
  - Machine Learning and Data Science (Jupyter, VSCode)
  - Minimalistic set of applications (Thorium, Brave, Firefox, CotEditor, AppCleaner,...)

## Assumptions
- Your shell is *Zsh*

## Prerequisites
1. Install homebrew via the following instructions from https://brew.sh/
2. Install GitHub CLI via `brew install gh`
3. Install ssh key via `gh auth login`
4. Clone this repository via `git clone git@github.com:pgagarinov/awesome-macos-config.git`
5. cd into the repository via `cd awesome-macos-config`

## Installation
### System-wide packages for TERMINAL experience
Install system-wide packages for terminal experience  via `./install-terminal-packages.sh`
### System-wide packages for DESKTOP experience
Install packages for Desktop experience via `./install-desktop-packages.sh`
### User-specific packages
Configure your MacOS profile via `./user/config.sh` from under YOUR user. This script is different from the previous two scripts as it does not require sudo access and is intended to be run from under your user.
### Restart your shell
or run 
`source ~/.zshrc`
### Set email and user name for git (if you plan to use it)
git config --global user.name "Your Name"
git config --global user.email "your@email.me"