# suppress greeting message
set fish_greeting

# set color
set color_status_nonzero_bg ffffff
set color_status_nonzero_str 000000
set color_status_superuser_bg ffffff
set color_status_superuser_str 000000
set color_status_jobs_bg ffffff
set color_status_jobs_str 000000
set color_virtual_env_bg 4ac0ff
set color_virtual_env_str 000000
set color_user_bg ff96b6
set color_user_str 000000
set color_dir_bg 000000
set color_dir_str ffffff
set color_git_dirty_bg ffb05c
set color_git_dirty_str 000000
set color_git_bg 5cffb6
set color_git_str 000000

# alias
alias ll="ls -l"
alias lla="ls -al"
alias sso="aws sso login"

# asdf
if type -q brew && test -e (brew --prefix asdf)"/libexec/asdf.fish"
    source (brew --prefix asdf)/libexec/asdf.fish
end

# vscode integration
string match -q "$TERM_PROGRAM" "vscode"
and . (code --locate-shell-integration-path fish)
