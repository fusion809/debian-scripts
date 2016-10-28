## Update local arch-scripts repo
function cps {
  sudo chmod +x -R {$HOME,/root}/Shell/
  rm -rf $DBS/Shell && mkdir $DBS/Shell
  sudo rm -rf $DBS/root/Shell
  cp -a $HOME/Shell/* $DBS/Shell
  cp -a $HOME/{.bashrc,.zshrc} $DBS/
  sudo cp -a /root/{Shell,.bashrc,.zshrc} $DBS/root/
}

## Update sabayon-scripts GitHub repo
function shup {
  cps && cdds && push "$1" && cd - && szsh
}

function sudoers {
	sudo cp -a $GHUBM/scripts/arch-scripts/etc/sudoers /etc/sudoers
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
