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

function nixs {
	nix search "$@"
}

function nixrb {
	nixos-rebuild switch --upgrade
}

function nixrbt {
	nix-channel --update
	nixos-rebuild boot
}

function nixc {
	nix-collect-garbage -d
	nix-store --optimise
}

alias clean_up=nixc
