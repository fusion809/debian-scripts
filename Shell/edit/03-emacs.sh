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
  emcp "Simple-Pendulum"
}
