#!/bin/zsh
if [[ -f /opt/messengerfordesktop/messengerfordesktop ]]; then
  MESSENGER_INSTALLED_VERSION=$(apt-cache show messengerfordesktop | grep "Version:" |  cut -d ':' -f 2 | cut -d ' ' -f 2)
fi
MESSENGER_LATEST_VERSION=$(wget -q "https://api.github.com/repos/Aluxian/Messenger-for-Desktop/releases/latest"  -O - | grep -E "https.*messengerfordesktop-.*x86_64.rpm" | cut -d '"' -f 4 | cut -d '/' -f 8 | sed 's/v//g')

autoload is-at-least

function messengerfordesktop-install {
  # printf "${MESSENGER_LATEST_VERSION}" >> $HOME/.local/share/messengerfordesktop-${MESSENGER_LATEST_VERSION} is in case the Atom package is broken like Atom 1.12.8
  wget -c https://github.com/Aluxian/Messenger-for-Desktop/releases/download/v${MESSENGER_LATEST_VERSION}/messengerfordesktop-${MESSENGER_LATEST_VERSION}-linux-amd64.deb -O /tmp/messengerfordesktop-${MESSENGER_LATEST_VERSION}-linux-amd64.deb
  sudo dpkg -i /tmp/messengerfordesktop-${MESSENGER_LATEST_VERSION}-linux-amd64.deb
}

if [[ -n $MESSENGER_INSTALLED_VERSION ]] && ! `is-at-least $MESSENGER_LATEST_VERSION ${MESSENGER_INSTALLED_VERSION:-0}`; then
  if ! [[ -f $HOME/.local/share/messengerfordesktop-${MESSENGER_LATEST_VERSION} ]]; then
    messengerfordesktop-install
  fi
fi
