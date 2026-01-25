function r
    set -l repo (ghq list | peco)
    if test -n "$repo"
        cd (ghq root)/$repo
    end
end
