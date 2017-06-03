function cdls {
    cd "$HOME/.local/share/$1"
}

function cdap {
    cdls "applications/$1"
}

function cddd {
    cdls "desktop-directories/$1"
}

function cdi {
    cdls "icons/$1"
}

alias cdli=cdi

function cdlt {
    cdls "themes/$1"
}

function cdw {
    cdls "wallpapers/$1"
}

alias cdlw=cdw
