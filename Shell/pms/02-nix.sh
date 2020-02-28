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

function vscode_nixpkgs_update {
	pushd -q $NIXPKGS/pkgs/applications/editors/vscode
	current_nixpkg_version=$(grep --include="*.nix" -Ri "version =" --exclude="with-extensions.nix" | head -n 1 | cut -d '=' -f 2 | sed 's/ "//g' | sed 's/";//g')
	latest_version=$(wget -cqO- https://github.com/Microsoft/vscode/releases | grep tar.gz | head -n 1 | cut -d '/' -f 5 | sed 's/\.tar\.gz.*//g')
	if [[ ${current_nixpkg_version} != ${latest_version} ]]; then
		sed -i -e "s|version = \"${current_nixpkg_version}\"|version = \"${latest_version}\"|g" *.nix
		checksum=$(nix-prefetch --force $NIXPKGS vscode)
		sed -i -e "22s|= \".*\"|= \"${checksum}\"|" default.nix
		nixrb
		push "vscode: ${current_nixpkg_version} -> ${latest_version}"
	fi
	popd -q
}

alias vscodeup=vscode_nixpkgs_update