if ! [[ -f /usr/bin/pastebinit ]]; then
     emin pastebinit
fi

if ! [[ -f /usr/bin/hub ]]; then
     emin dev-vcs/hub
fi
