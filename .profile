# script directory
export PATH="$HOME/dotfiles/scripts:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Homebrew
case "$OSTYPE" in
    linux*)
        # linux default
        if [ -d "/home/linuxbrew/.linuxbrew" ] ; then
            eval $("/home/linuxbrew/.linuxbrew/bin/brew" shellenv)
        fi
        # linux fallback
        if [ -d "$HOME/.linuxbrew" ] ; then
            eval $("$HOME/.linuxbrew/bin/brew" shellenv)
        fi
        ;;
    darwin*)
        # Intel Mac
        if [ -d "/usr/local/Homebrew" ] ; then
            eval $("/usr/local/Homebrew/bin/brew" shellenv)
        fi
        # Apple Silicon
        if [ -d "/opt/homebrew" ] ; then
            eval $("/opt/homebrew/bin/brew" shellenv)
        fi
        ;;
esac

# SSH auth sock
if [ -S "$HOME/.ssh/agent.sock" ] ; then
    export SSH_AUTH_SOCK="$HOME/.ssh/agent.sock"
fi
