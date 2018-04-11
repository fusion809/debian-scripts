function flatup {
    if [[ -f /usr/bin/flatpak ]]; then
         flatpak update
    fi
}

