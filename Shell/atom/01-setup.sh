#export ATOM_VERSION=$(wget -q "https://api.github.com/repos/atom/atom/releases/latest" -O - | grep -E "https.*atom-amd64.tar.gz" | cut -d '"' -f4 | cut -d '/' -f 8 | sed 's/v//g')

#if ! [[ -f $HOME/Programs/AppImages/Atom-${ATOM_VERSION}.glibc2.14-x86_64.AppImage ]]; then
#     printf "Atom-${ATOM_VERSION}.glibc2.14-x86_64.AppImage does not exist locally! Downloading...\n"
#     if ! [[ -d $HOME/Programs/AppImages ]]; then
#          mkdir -p $HOME/Programs/AppImages
#     fi
#     wget -c "https://bintray.com/fusion809/AppImages/download_file?file_path=Atom-${ATOM_VERSION}.glibc2.14-x86_64.AppImage" -O $HOME/Programs/AppImages/Atom-${ATOM_VERSION}.glibc2.14-x86_64.AppImage || printf "Download failed!\n Perhaps I have not triggered the build of the latest Atom version yet?\n"
#     printf "Marking Atom-${ATOM_VERSION}.glibc2.14-x86_64.AppImage executable.\n"
#     chmod +x $HOME/Programs/AppImages/Atom-${ATOM_VERSION}.glibc2.14-x86_64.AppImage || printf "Marking Atom-${ATOM_VERSION}.glibc2.14-x86_64.AppImage executable failed!\n"
#fi

#if ! `which atom >/dev/null 2>&1`; then
#     alias atom="$HOME/Programs/AppImages/Atom-${ATOM_VERSION}.glibc2.14-x86_64.AppImage"
#fi
