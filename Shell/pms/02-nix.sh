function nixc {
	nix-collect-garbage -d
	nix-store --optimise
}

alias clean_up=nixc
