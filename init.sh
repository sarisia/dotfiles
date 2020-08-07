#!/bin/bash

echo "Installing homebrew..."
# https://brew.sh/index_ja
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

echo "Installing tools..."
# TODO: export install list to file
DOTTOOLS=("fish" "ghq" "peco")
brew install ${DOTTOOLS[@]}

echo "Initialize fish"
fish init.fish

echo "Create repo directory"
mkdir -p ~/repo
