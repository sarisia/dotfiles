function gc --wraps='git checkout' --description 'alias gc git checkout'
  git checkout $argv;
  git submodule update --init --recursive;
end
