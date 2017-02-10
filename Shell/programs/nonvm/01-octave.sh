if ! [[ -f /usr/bin/octave ]]; then
  safi octave
fi

function octcli {
  octave --no-gui
}

function octe {
  octave --eval $@
}

function ctof {
  octe "32+1.8*$1"
}

function e {
  octe "format long g; e" | cut -d '=' -f 2 | sed 's/ //g'
}
