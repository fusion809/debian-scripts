function emup {
  cp $HOME/.emacs $GHUBM/emacs
  cd $GHUBM/emacs
  if [[ -n "$@" ]]; then
    push "$@"
  else
    push "Updating"
  fi
}

function emcp {
  emacs "$HOME/Documents/CodeLite/CPP-Math-Projects/$1"
}

function emsp {
  emcp "Simple-Pendulum/$1"
}

function eme {
  emacs $HOME/.emacs
}

function emfgi {
  emacs "$FGI/$1"
}

function emsh {
  emacs "$HOME/Shell/$1"
}

function emgm {
  emacs "$GHUBM/$1"
}

function emds {
  emacs "$DBS/$1"
}
