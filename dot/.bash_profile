#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Linuxbrew
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# start fish
exec fish
