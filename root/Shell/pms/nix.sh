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
	nix-channel --update
	nixos-rebuild -I /nix/var/nix/profiles/per-user/root/channels/nixos-unstable boot
}
