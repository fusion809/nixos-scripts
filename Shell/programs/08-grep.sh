function gfgi {
    grep --include="*" -R "$@" $HOME/GitHub/mine/websites/fusion809.github.io | grep -v "_site" | sed 's|^/home/fusion809/GitHub/mine/websites/fusion809.github.io/||g'
}
