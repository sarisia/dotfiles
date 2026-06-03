#!/bin/bash

# install script
# copies all the dotfiles in this dir
# and also in `.config/`

# exclude ./ , ../ and .git from glob result
# also enables dotglob option
GLOBIGNORE=".:..:.git"

# prepare_target PATH
#   - symlink           -> remove (devcontainers break on symlinks)
#   - real file/dir     -> rename to PATH.old (or, if PATH.old already exists,
#                          just remove PATH)
prepare_target() {
    local path="$1"
    if [ -L "$path" ]; then
        rm -rf "$path"
    elif [ -e "$path" ]; then
        if [ -e "$path.old" ]; then
            rm -rf "$path"
        else
            mv "$path" "$path.old"
        fi
    fi
}

# toplevel dotfiles
for f in .* ; do
    if [ ! -f "$f" ] ; then
        continue
    fi

    prepare_target "$HOME/$f"
    cp -a "$PWD/$f" "$HOME/$f"
done

# everything in .config dir
# first ready the .config dir
mkdir -p "$HOME/.config"

# then copy everything
for f in .config/* ; do
    prepare_target "$HOME/$f"
    cp -a "$PWD/$f" "$HOME/$f"
done

# ai agents
# .claude dir
prepare_target "$HOME/.claude"
cp -a "$PWD/.claude" "$HOME/.claude"

# opencode
mkdir -p "$HOME/.config/opencode"
prepare_target "$HOME/.config/opencode/opencode.jsonc"
cp -a "$PWD/.claude/opencode.jsonc" "$HOME/.config/opencode/opencode.jsonc"

mkdir -p "$HOME/.docker/mcp"
prepare_target "$HOME/.docker/mcp/registry.yaml"
cp -a "$PWD/mcp/registry.yaml" "$HOME/.docker/mcp/registry.yaml"
cp "$PWD/mcp/secrets.example" "$HOME/.docker/mcp/secrets.example"

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
# GitHub Codespaces clones dotfiles to a non-standard path like
# `/workspaces/.codespaces/.persistedshare/dotfiles`, so this symlink lets
# .profile's PATH and dot_update resolve ~/dotfiles to the real repo location.
if [ ! -e "$HOME/dotfiles" ]; then
    ln -sf "$PWD" "$HOME/dotfiles"
fi

echo "installed!"
