## Update local funtoo-scripts and funtoo-config repos
function cps {
    # scripts
    sudo chmod +x -R {$HOME,/root}/Shell/
    sudo rm -rf $NS/Shell && mkdir $NS/Shell
    sudo rm -rf $NS/root/Shell
    cp -a $HOME/Shell/* $NS/Shell
    cp -a $HOME/{.bashrc,.zshrc} $NS/
    sudo mkdir -p $NS/root
    sudo cp -a /root/{Shell,.bashrc,.zshrc} $NS/root
    sudo mkdir -p $NS/usr/local/bin
}

function cdgs {
    cd $NS
}

## Update nixos-scripts GitHub repo
function shup {
    cps && cdgs && push "$1" && cd - && szsh
}
