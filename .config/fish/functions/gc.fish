function gc --wraps='git checkout' --description 'alias gc git checkout'
  git checkout --ignore-other-worktrees $argv;
  git submodule update --init --recursive;
end
