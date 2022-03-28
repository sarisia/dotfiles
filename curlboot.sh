#!/bin/bash

# bootstrap script, intended to be called as:
# `curl -L boot.sarisia.cc | bash`

# check git is installed
if [[ ! -x $(command -v git) ]]; then
    echo "git is not installed."
    exit 1
fi

# bootstrap
git clone https://github.com/sarisia/dotfiles.git ~/dotfiles
(cd ~/dotfiles && ./install.sh)

echo "dotfiles is ready!"
