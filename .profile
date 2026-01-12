# dotfiles script directory
export PATH="$HOME/dotfiles/scripts:$PATH"

# common bin path
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

# SSH auth sock config for WSL. see scripts/dot_ssh_agent_win
if [ -S "$HOME/.ssh/agent.sock" ] ; then
    export SSH_AUTH_SOCK="$HOME/.ssh/agent.sock"
fi
# SSH auth sock config for macOS 1Password
# https://developer.1password.com/docs/ssh/get-started#step-4-configure-your-ssh-or-git-client
if [ -S "$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock" ] ; then
    export SSH_AUTH_SOCK="$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
fi

# AWS
export AWS_REGION=ap-northeast-1
