function gitaur {
     git clone ssh://aur@aur.archlinux.org/$1.git
}

eval `keychain -q --eval aur`
