#!/bin/bash

# install script
# symlinks all the dotfiles in this dir
# and also in `.config/`

# exclude ./ , ../ and .git from glob result
# also enables dotglob option
GLOBIGNORE=".:..:.git"

# toplevel dotfiles
for f in .* ; do
    if [ -f "$f" ] ; then
        ln -sf "$PWD/$f" "$HOME/$f"
    fi
done

# everything in .config dir
# first ready the .config dir
mkdir -p "$HOME/.config"

# then link everything
for f in .config/* ; do
    # if the target dir is already exists, rename to name.old
    if [ -d "$HOME/$f" ] ; then
        mv "$HOME/$f/" "$HOME/$f.old/"
    fi

    ln -sf "$PWD/$f" "$HOME/$f"
done
