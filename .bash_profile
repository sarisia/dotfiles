# load global configuration
if [ -f "$HOME/.profile" ]; then
	. "$HOME/.profile"
fi

# bash-specific
if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
fi
