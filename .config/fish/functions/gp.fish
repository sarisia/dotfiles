function gp --wraps='git pull' --description 'alias gp git pull'
  git pull --recurse-submodules $argv; 
end
