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

# claude code
# required by devcontainer feature ghcr.io/sarisia/devcontainer-features/claude-code
touch "$HOME/.claude.json"
mkdir -p "$HOME/.claude"

if [ -f "$HOME/.claude/CLAUDE.md" ]; then
    # if symlink, remove. Otherwise, rename.
    if [ -L "$HOME/.claude/CLAUDE.md" ] ; then
        rm "$HOME/.claude/CLAUDE.md"
    else
        mv "$HOME/.claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md.old"
    fi
fi

ln -sf "$PWD/.claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"

# create empty ~/.gitconfig for local git config
# by default, `git config` writes config to ~/.config/git/config, which will be
# pushed to dotfiles. Creating empty ~/.gitconfig prevents this.
# Also, skip for devcontainer. It copies host's .gitconfig to container if not exists
# but seems its timing is really odd...
if [ "$REMOTE_CONTAINERS" == 'true' ]; then
    true
else
    touch $HOME/.gitconfig
fi

# create symlink points dotfiles directory if $HOME/dotfiles does not exist
# since some runtimes like github codespaces clones dotfiles directory to
# weird path like `/workspaces/.codespaces/.persistedshare/dotfiles`
if [ ! -e "$HOME/dotfiles" ]; then
    ln -sf "$PWD" "$HOME/dotfiles"
fi

echo "installed!"
