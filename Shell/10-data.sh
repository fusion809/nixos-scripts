function confup {
    sudo rm -rf /data/.config /data/.local
    cp -a $HOME/.config /data
    cp -a $HOME/.local /data
}
