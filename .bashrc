# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# exec fish if exist
if command -v fish &> /dev/null ; then
    exec fish
fi
