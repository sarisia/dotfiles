# suppress greeting message
set fish_greeting

# set color
set color_status_nonzero_bg ffffff
set color_status_nonzero_str 000000
set color_status_superuser_bg ffffff
set color_status_superuser_str 000000
set color_status_jobs_bg ffffff
set color_status_jobs_str 000000
set color_virtual_env_bg 
set color_virtual_env_str
set color_user_bg ff96b6
set color_user_str 000000
set color_dir_bg 000000
set color_dir_str ffffff
set color_git_dirty_bg ffb05c
set color_git_dirty_str 000000
set color_git_bg 5cffb6
set color_git_str 000000

# pyenv
status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)

# alias
alias gp="git pull"
alias gl="git log"
alias gs="git status"
alias gc="git checkout"
alias gb="git branch"
