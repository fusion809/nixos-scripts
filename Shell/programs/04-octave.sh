function octcli {
    octave --no-gui
}

function octe {
    octave --eval "$@"
}

function ctof {
    octe "$1*1.8+32"
}

function ftoc {
    octe "($1-32)/1.8"
}

function kgtolb {
    octe "$1*2.20462"
}

function lbtokg {
    octe "$1/2.20462"
}
