function nixca {
    sudo nix-channel --add https://nixos.org/channels/$1
}

function nixcr {
    sudo nix-channel --remove "$@"
}

function nixup {
    sudo nix-channel --update && sudo nix-env --upgrade
}

function nixi {
    sudo nix-env -i "$@"
}

function nixr {
    sudo nix-env -r "$@"
}
