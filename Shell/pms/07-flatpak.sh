function builder {
    flatpak run org.gnome.Builder --user "$@"
}

function flatup {
    flatpak update --user
}

function monod {
    flatpak run com.xamarin.MonoDevelop --user "$@"
}
