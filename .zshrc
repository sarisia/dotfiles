# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# exec fish
exec fish
