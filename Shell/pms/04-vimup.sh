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
  _pkgver=${pkgver//v/}
  unset srcdir
  cdp
  curl -L https://github.com/vim/vim/archive/$pkgver.tar.gz | tar xz --transform="s/vim-${_pkgver}/vim/"
  cd vim
  ./configure --prefix=/usr --enable-gui=gtk2
  make
  sudo checkinstall --maintainer="Brenton Horne \<brentonhorne77@gmail.com\>" --pkgversion="${_pkgver}"
  if ! [[ -f $HOME/Programs/Deb/vim*.deb ]]; then
    sudo rm $HOME/Programs/Deb/vim*.deb
  fi
  mv vim_${_pkgver}-1_amd64.deb $HOME/Programs/Deb
  cd $PWD
}
