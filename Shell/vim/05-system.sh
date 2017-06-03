function vfs {
    sudo vim /etc/fstab
}

function vp {
    sudo vim /etc/portage/$1
}

function vpak {
    vp "package.accept_keywords"
}

function vpmc {
    vp "make.conf"
}

function vpm {
    svd /etc/portage/package.mask
}

function vpu {
    svd /etc/portage/package.use
}

function vs {
    sudo vim /etc/sddm.conf
}
