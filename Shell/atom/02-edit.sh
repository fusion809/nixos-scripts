function edsh {
     atom $HOME/Shell
}

function edst {
     if ! [[ -d $HOME/GitHub/mine/packaging/sabayon-tools ]]; then
          git clone https://github.com/fusion809/sabayon-tools $HOME/GitHub/mine/packaging/sabayon-tools
     fi
     atom $HOME/GitHub/mine/packaging/sabayon-tools
}
