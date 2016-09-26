function vimup {
  if [[ -d $GHUBO/vim ]]; then
    git clone https://github.com/vim/vim $GHUBO/vim
  fi
  cdgo vim
  git stash
  git pull --all
  git checkout $(git describe --tags `git rev-list --tags --max-count=1`)
  unset srcdir
  ./configure --prefix
  make
  sudo checkinstall
  mv *.deb $HOME/Programs/Deb
  cd -
}
