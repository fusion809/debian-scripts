function octave {
    if ! [[ -f /usr/bin/octave ]]; then
         flatpak run org.octave.Octave "$@"
    fi
}
 
function octcli {
    octave --no-gui "$@"
}

function octe {
    octave --eval "$1"
} 
