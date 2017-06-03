function gvd {
    pushd "$1"
    gvim
    popd
}

function sgvd {
    pushd "$1"
    sudo gvim
    popd
}
