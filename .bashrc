# load fish
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# exec fish if exist
if command -v fish &> /dev/null ; then
    if [ -t 1 ]; then
        exec fish
    fi
fi
