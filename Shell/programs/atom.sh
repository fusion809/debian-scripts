function atomup {
  ATOM_INSTALLED_VERSION=$(atom --version | cut -d ':' -f 2 | head -n 1 | sed 's/ //g')
  ATOM_LATEST_VERSION=$(wget -q "https://api.github.com/repos/atom/atom/releases/latest"  -O - | grep -E "https.*atom-amd64.tar.gz" | cut -d '"' -f 4 | cut -d '/' -f 8 | sed 's/v//g')

  if [[ $ATOM_INSTALLED_VERSION < $ATOM_LATEST_VERSION ]]; then
    wget -c https://github.com/atom/atom/releases/download/v${ATOM_LATEST_VERSION}/atom-amd64.deb -O /tmp/atom-amd64.deb
    sudo dpkg -i /tmp/atom-amd64.deb
    sudo apt-get -f install -y
    rm /tmp/atom-amd64.deb
  fi
}

printf "" | zenity --progress --text "Display test" --auto-close 2> /dev/null
if [[ $? -eq 0 ]]; then
  atomup
else
  printf "X display is not available; likely running in a TTY. Update checking will not occur in a terminal session without X display access."
fi
