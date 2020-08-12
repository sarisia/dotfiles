function b
    git checkout $argv (git branch -a | peco | xargs)
end
