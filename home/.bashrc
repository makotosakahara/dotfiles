case $- in
    *i*) [ -x "/usr/bin/fish" ] && exec fish;;
    *) return;;
esac
