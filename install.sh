#!/bin/bash

# install script
# symlinks all the dotfiles in this dir
# and also in `.config/`

# link SRC [DST] — symlinks repo path SRC (relative to $PWD) into $HOME/DST;
# DST defaults to SRC. Creates the parent dir. Idempotent; backs up only a real
# file/dir that isn't already our link. Uses -n so directory symlinks are
# replaced rather than followed into. A SRC missing from the repo is skipped, so
# entries can be listed before the file lands here.
link() {
    local src="$PWD/$1" dst="$HOME/${2:-$1}"
    [ -e "$src" ] || return 0
    mkdir -p "$(dirname "$dst")"
    if [ -L "$dst" ]; then
        rm -f "$dst"
    elif [ -e "$dst" ]; then
        mv "$dst" "$dst.old"
    fi
    ln -sfn "$src" "$dst"
}

# toplevel
link .profile
link .zprofile
link .zshrc
link .bash_profile
link .bashrc
link .hushlogin

# .config
link .config/fish
link .config/git
link .config/systemd
link .config/opencode/opencode.jsonc

# claude code
link .claude/settings.json
link .claude/CLAUDE.md
link .claude/keybindings.json
link .claude/skills

link .codex/config.toml

# other agents
link .claude/skills          .agents/skills

# docker mcp gateway
link mcp/registry.yaml       .docker/mcp/registry.yaml
link mcp/secrets.example      .docker/mcp/secrets.example

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
