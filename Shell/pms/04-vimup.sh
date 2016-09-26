function vimup {
  if ! [[ -d $GHUBO/vim ]]; then
    git clone https://github.com/vim/vim $GHUBO/vim
  fi
  PWD=$(pwd)
  cdgo vim
  git stash
  make distclean
  git pull --all
  pkgver=$(git describe --tags `git rev-list --tags --max-count=1`)
  unset srcdir
  cdp
  curl -L https://github.com/vim/vim/archive/$pkgver.tar.gz | tar xz --transform="s/vim-${pkgver//v/}/vim/"
  cd vim
  ./configure --prefix=/usr
  make
  sudo checkinstall
  mv *.deb $HOME/Programs/Deb
  cd $PWD
}
