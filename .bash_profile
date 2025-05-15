# load global configuration
if [ -f "$HOME/.profile" ]; then
	. "$HOME/.profile"
fi

if [ -f "$HOME/.profile.local" ]; then
	. "$HOME/.profile.local"
fi

# bash-specific
if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
fi
