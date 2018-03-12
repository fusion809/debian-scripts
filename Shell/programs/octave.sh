if ! ( [[ -f /usr/bin/octave ]] | [[ -f $HOME/.nix-profile/bin/octave ]] ); then
    if [[ -f /usr/bin/flatpak ]]; then
         alias octave=`flatpak run org.octave.Octave`
    fi
fi
 
function octcli {
    if ! `which octave-cli`; then
         if `which octave`; then
              octave --no-gui "$@"
         fi
    else
         octave-cli "$@"
    fi
}

function octe {
    if  [[ -f /usr/bin/octave ]]; then
         octave --eval "$1"
    elif [[ -f $HOME/.nix-profile/bin/octave-cli ]]; then
         octave-cli --eval "$1"
    fi
} 
