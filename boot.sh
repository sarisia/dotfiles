#!/bin/bash

DOTPATH=~/dotfiles
REQUIREMENTS=("git" "make" "curl")

echo "Checking requirements..."
REQS_NG=false

for i in "${REQUIREMENTS[@]}"; do
    if [[ ! -x $(command -v $i) ]]; then
        echo "missing: $i"
        REQS_NG=true
    fi
done

if $REQS_NG; then
    echo "Please install missing requirements listed above."
    exit 1
fi

git clone https://github.com/sarisia/dotfiles.git $DOTPATH
make -C $DOTPATH boot
