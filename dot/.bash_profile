#
# ~/.bash_profile
#

# Linuxbrew
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Load .bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc

# start fish shell
exec fish
