#!/bin/zsh
if [[ -f /usr/bin/atom ]]; then
  ATOM_INSTALLED_VERSION=$(apt-cache show atom | grep "Version:" | cut -d ':' -f 2 | cut -d ' ' -f 2)
else
  ATOM_INSTALLED_VERSION=""
fi
ATOM_LATEST_VERSION=$(wget -q "https://api.github.com/repos/atom/atom/releases/latest"  -O - | grep -E "https.*atom-amd64.tar.gz" | cut -d '"' -f 4 | cut -d '/' -f 8 | sed 's/v//g')

autoload is-at-least

if ! `is-at-least $ATOM_LATEST_VERSION ${ATOM_INSTALLED_VERSION:-0}`; then
  wget -c https://github.com/atom/atom/releases/download/v${ATOM_LATEST_VERSION}/atom-amd64.deb -O /tmp/atom-${ATOM_LATEST_VERSION}-amd64.deb
  sudo dpkg -i /tmp/atom-${ATOM_LATEST_VERSION}-amd64.deb
fi
