export CHROOT=$HOME/chroot
# Alternative kernel det
# eselect kernel list | grep "\*" | cut -d ' ' -f 6 | sed 's/linux\-//g'
export KERN=$(ls -ld /usr/src/linux | cut -d ' ' -f 11 | sed 's/linux\-//g')
export PATH=$PATH:/usr/local/bin
