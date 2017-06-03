if ! `which pastebinit > /dev/null 2>&1`; then
     sudo nix-env -i pastebinit
fi

if ! `which keychain > /dev/null 2>&1`; then
     sudo nix-env -i keychain
fi

if ! `which hub > /dev/null 2>&1`; then
     sudo nix-env -i hub
fi
