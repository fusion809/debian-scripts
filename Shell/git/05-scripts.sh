## Update local arch-scripts repo
function cps {
  sudo chmod +x -R {$HOME,/root}/Shell/
}

## Update sabayon-scripts GitHub repo
function shup {
  cps && cdds && push "$1" && cd - && szsh
}

## Update bin repo
function bup {
  cd $HOME/bin
  if [[ -n "$1" ]]; then
    push "$1"
  else
    push "Updating"
  fi
  cd -
}

function shupat {
  cd $HOME/.atom
  pushat "Updating"
  cd -
}
