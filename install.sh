#!/bin/bash

# install script
# symlinks all the dotfiles in this dir
# and also in `.config/`

# exclude ./ , ../ and .git from glob result
# also enables dotglob option
GLOBIGNORE=".:..:.git"

# toplevel dotfiles
for f in .* ; do
    if [ ! -f "$f" ] ; then
        continue
    fi

    # if the target file already exists, rename to name.old
    if [ -f "$HOME/$f" ]; then
        # if symlink, remove. Otherwise, rename.
        if [ -L "$HOME/$f" ] ; then
            rm "$HOME/$f"
        else
            mv "$HOME/$f" "$HOME/$f.old"
        fi
    fi

    ln -sf "$PWD/$f" "$HOME/$f"
done

# everything in .config dir
# first ready the .config dir
mkdir -p "$HOME/.config"

# then link everything
for f in .config/* ; do
    # if the target dir is already exists, rename to name.old
    if [ -e "$HOME/$f" ] ; then
        # if symlink, remove. Otherwise, rename.
        if [ -L "$HOME/$f" ] ; then
            rm "$HOME/$f"
        else
            mv "$HOME/$f" "$HOME/$f.old"
        fi
    fi

    ln -sf "$PWD/$f" "$HOME/$f"
done

# fish
echo "try installing fish shell..."
(cd ~/dotfiles && ./install_fish.sh)
