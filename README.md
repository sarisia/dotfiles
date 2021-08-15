# sarisia/dotfiles

- Easy setup with `curl -L boot.sarisia.cc | bash` (this redirects to `curlboot.sh`)
- zsh and bash support (works out of the box with macOS)
- Codespaces support (See [Structure](#structure))

# Structure

## Initialize flow

### zsh (default shell for macOS / popular Codespaces images)

1. `.zprofile`
2. `.profile` (from `.zprofile`)
3. `.zshrc` (from `.zprofile`)

### bash (most Linux distributions)

1. `.bash_profile`
2. `.profile` (from `.bash_profile`)
3. `.bashrc` (from `.bash_profile`)

## Files

- `.profile`: configurations not depends on shell (PATH, EDITOR, ...)
- `.zprofile`, `.bash_profile`: simple script for loading `.profile` and `.zshrc`
or `.bashrc` depends on shell (in order to avoid shells' configuration files loading
order problem. see [bash manual](https://www.gnu.org/software/bash/manual/html_node/Bash-Startup-Files.html))
- `.bashrc`, `.zshrc`: shell-related configurations (alias, ...)
