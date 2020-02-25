function nixc {
	nix-collect-garbage -d
	nix-store --optimise
}

alias clean_up=nixc

function nixo {
	nix-store --optimise
}

alias optimise=nixo

function nixco {
	nix-collect-garbage -d
}

alias collect_garbage=nixco
