function vd {
    pushd "$1"
    vim
    popd
}

function svd {
    pushd "$1"
    sudo vim
    popd
}
