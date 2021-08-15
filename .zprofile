# load global configuration
if [ -f "$HOME/.profile" ]; then
	. "$HOME/.profile"
fi

# zsh-specific
if [ -f "$HOME/.zshrc" ]; then
	. "$HOME/.zshrc"
fi
