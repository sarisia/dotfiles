function gha --wraps='gh browse --actions' --description 'alias gha gh browse --actions'
  gh browse --actions $argv;
end
