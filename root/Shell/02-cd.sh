function cdsh {
	cd "$HOME"/Shell || ( printf "%s\n" "It doth appear that $HOME/Shell does not exist, as cd'in into it failed." && return )
}

function cdb {
	cd "/boot" || ( printf "%s\n" "It appears that /boot doesn't exist, as I cannot seem to cd into it, you may wish to rectify this before rebooting, as this is odd." && return )
}

function cdnc {
	cd "/etc/nixos" || ( printf "%s\n" "Are you sure this is NixOS, as /etc/nixos doesn't seem to exist, as cd'in into it failed." && return )
}
