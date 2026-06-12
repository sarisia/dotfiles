function gh --wraps=gh --description 'gh: browse if no args, otherwise pass through'
  if test (count $argv) -eq 0
    command gh browse
  else
    command gh $argv
  end
end
