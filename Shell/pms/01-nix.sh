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
    nix-env -r "$@"
}

function nixrb {
    sudo nixos-rebuild switch
}

function nixs {
    nix-env -qa "$@"
}
