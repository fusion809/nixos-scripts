function clipf {
	xclip -sel clip < "$1" || ( printf "%s\n" "This appears to have failed, maybe you need to run xhost + in a user shell, then run export DISPLAY=\":0\" before clipf'in again?" && return )
}
