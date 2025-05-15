# load global configuration
if [ -f "$HOME/.profile" ]; then
	. "$HOME/.profile"
fi

if [ -f "$HOME/.profile.local" ]; then
	. "$HOME/.profile.local"
fi

# zsh-specific
if [ -f "$HOME/.zshrc" ]; then
	. "$HOME/.zshrc"
fi
