function gp --wraps='git pull' --description 'alias gp git pull'
  git pull $argv;
  git submodule update --init --recursive;
end
