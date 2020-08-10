#!/bin/bash

echo "Base DOTPATH: ${DOTPATH}"

echo "Setting up symlinks..."
ln -sf ${DOTPATH}/dot/.bash_profile ~/.bash_profile
ln -sf ${DOTPATH}/dot/.bashrc ~/.bashrc
ln -sf ${DOTPATH}/dot/.hushlogin ~/.hushlogin

mkdir -p ~/.config/fish/functions
ln -sf ${DOTPATH}/dot/.config/fish/config.fish ~/.config/fish/config.fish
ln -sf ${DOTPATH}/dot/.config/fish/fishfile ~/.config/fish/fishfile
ln -sf ${DOTPATH}/dot/.config/fish/functions/r.fish ~/.config/fish/functions/r.fish
ln -sf ${DOTPATH}/dot/.config/fish/functions/root.fish ~/.config/fish/functions/root.fish

echo "Run fisher"
fish -c fisher

echo "Configure git"
git config --global user.name sarisia
git config --global user.email "sarisiaice@gmail.com"
git config --global pull.ff only
git config --global ghq.root ~/repo
