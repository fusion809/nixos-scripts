function julia {
	    if [[ -f /proc/config.gz ]]
        then
                if ! [[ -f /arch/proc/config.gz ]]
                then
                        sudo mount -t proc /proc /arch/proc
                fi
        elif [[ -f /proc/cgroups ]]
        then
                if ! [[ -f /arch/proc/cgroups ]]
                then
                        sudo mount -t proc /proc /arch/proc
                fi
        elif [[ -f /proc/devices ]]
        then
                if ! [[ -f /arch/proc/devices ]]
                then
                        sudo mount -t proc /proc /arch/proc
                fi
        fi
        sudo mount --rbind /dev /arch/dev
        sudo mount --make-rslave /arch/dev
        sudo mount --rbind /sys /arch/sys
        sudo mount --make-rslave /arch/sys
        pulseaudio --start --exit-idle-time=-1
        pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1
        if ! [[ -f /arch/etc/resolv.conf ]]
        then
                sudo cp -L /etc/resolv.conf /arch/etc
        fi
        if ! [[ -d /arch/data/Documents ]]
        then
                sudo mount /dev/disk/by-label/Data* /arch/data
        fi
        
        sudo chroot /arch /usr/local/bin/julia
}

function jupyterlab {
	if [[ -f /proc/config.gz ]]
    then
        if ! [[ -f /arch/proc/config.gz ]]
        then
                sudo mount -t proc /proc /arch/proc
        fi
    elif [[ -f /proc/cgroups ]]
    then
        if ! [[ -f /arch/proc/cgroups ]]
	    then
                sudo mount -t proc /proc /arch/proc
        fi
    elif [[ -f /proc/devices ]]
    then
        if ! [[ -f /arch/proc/devices ]]
        then
                sudo mount -t proc /proc /arch/proc
        fi
    fi
    sudo mount --rbind /dev /arch/dev
    sudo mount --make-rslave /arch/dev
    sudo mount --rbind /sys /arch/sys
    sudo mount --make-rslave /arch/sys
    pulseaudio --start --exit-idle-time=-1
    pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1
    if ! [[ -f /arch/etc/resolv.conf ]]
    then
            sudo cp -L /etc/resolv.conf /arch/etc
    fi
    if ! [[ -d /arch/data/Documents ]]
    then
            sudo mount /dev/disk/by-label/Data* /arch/data
    fi
        
	sudo chroot /arch /usr/local/bin/jupyterlab "$1"
}

function runescape-launcher {
	if [[ -f /proc/config.gz ]]
    then
        if ! [[ -f /arch/proc/config.gz ]]
        then
                sudo mount -t proc /proc /arch/proc
        fi
    elif [[ -f /proc/cgroups ]]
    then
        if ! [[ -f /arch/proc/cgroups ]]
	    then
                sudo mount -t proc /proc /arch/proc
        fi
    elif [[ -f /proc/devices ]]
    then
        if ! [[ -f /arch/proc/devices ]]
        then
                sudo mount -t proc /proc /arch/proc
        fi
    fi
    sudo mount --rbind /dev /arch/dev
    sudo mount --make-rslave /arch/dev
    sudo mount --rbind /sys /arch/sys
    sudo mount --make-rslave /arch/sys
    pulseaudio --start --exit-idle-time=-1
    pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1
    if ! [[ -f /arch/etc/resolv.conf ]]
    then
            sudo cp -L /etc/resolv.conf /arch/etc
    fi
    if ! [[ -d /arch/data/Documents ]]
    then
            sudo mount /dev/disk/by-label/Data* /arch/data
    fi

	sudo chroot /arch /usr/local/bin/runescape-launcher
}