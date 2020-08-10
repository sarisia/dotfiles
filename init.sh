#!/bin/bash

echo "Installing homebrew..."
# if brew exists, skip.
if [[ ! -x $(command -v brew) ]]; then
    # https://brew.sh/index_ja
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    if [[ ${OSTYPE} == linux* ]]; then
        eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    fi
fi

# check homebrew is installed correctly
if [[ ! -x $(command -v brew) ]]; then
    echo "It seems brew is not installed correctly."
    exit 1
fi

echo "Installing tools..."
# TODO: export install list to file
DOTTOOLS=("fish" "ghq" "peco")
brew install ${DOTTOOLS[@]}

echo "Initialize fish"
fish init.fish

echo "Create repo directory"
mkdir -p ~/repo
