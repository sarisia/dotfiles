#
# ~/.bash_profile
#

# Homebrew (Linuxbrew)
if [[ ${OSTYPE} == linux* ]]; then
    eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
fi

# Load .bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc

# start fish shell
exec fish
