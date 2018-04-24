function nixca {
    nix-channel --add https://nixos.org/channels/$1
}

function nixcr {
    nix-channel --remove "$@"
}

function nixup {
    nix-channel --update && nix-env --upgrade
}

function nixi {
    nix-env -i "$@"
}

function nixr {
    nix-env --uninstall "$@"
}

function nixrb {
    sudo nix-channel --update
    sudo nixos-rebuild switch
    sudo nix-collect-garbage -d
}

function nixs {
    nix search "$@"
}
