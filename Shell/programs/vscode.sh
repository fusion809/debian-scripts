#!/bin/zsh
if [[ -f /usr/bin/code ]]; then
  export VSCODE_INSTALLED_VERSION=$(apt-cache show code | grep "Version:" | cut -d ':' -f 2 | cut -d ' ' -f 2)
fi
export VSCODE_URL=$(wget -cq http://code.visualstudio.com/updates -O - | grep "deb-x64" | cut -d '"' -f 8)
export VSCODE_LATEST_VERSION=$(echo $VSCODE_URL | cut -d '/' -f 4)

function vscode-install {
  wget -c $VSCODE_URL -O /tmp/code-${VSCODE_LATEST_VERSION}-amd64.deb
  sudo dpkg -i /tmp/code-${VSCODE_LATEST_VERSION}-amd64.deb
}

autoload is-at-least

if [[ -n ${VSCODE_INSTALLED_VERSION}]] && ! `is-at-least ${VSCODE_LATEST_VERSION} ${VSCODE_INSTALLED_VERSION:-0}`; then
  vscode-install
fi
