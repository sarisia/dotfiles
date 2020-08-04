#!/bin/bash

echo "Setting up symlinks..."
ln -sf ~/dotfiles/dot/.config/fish/config.fish ~/.config/fish/config.fish
ln -sf ~/dotfiles/dot/.config/fish/fishfile ~/.config/fish/fishfile
ln -sf ~/dotfiles/dot/.config/fish/functions/r.fish ~/.config/fish/functions/r.fish
ln -sf ~/dotfiles/dot/.config/fish/functions/root.fish ~/.config/fish/functions/root.fish

echo "Run fisher"
fish -c fisher

echo "Configure git"
git config --global user.name sarisia
git config --global user.email "sarisiaice@gmail.com"
git config --global ghq.root ~/repo
