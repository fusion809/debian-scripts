if [[ -f /usr/bin/code ]]; then
  VSCODE_INSTALLED_VERSION=$(apt-cache show code | grep "Version:" | cut -d ':' -f 2 | cut -d ' ' -f 2)
else
  VSCODE_INSTALLED_VERSION=""
fi
VSCODE_URL=$(wget -cq http://code.visualstudio.com/updates -O - | grep "deb-x64" | cut -d '"' -f 8)
VSCODE_LATEST_VERSION=$(echo $VSCODE_URL | cut -d '/' -f 4)

if [[ $VSCODE_INSTALLED_VERSION < $VSCODE_LATEST_VERSION ]]; then
  wget -c $VSCODE_URL -O code-${VSCODE_LATEST_VERSION}-amd64.deb
  sudo dpkg -i code-${VSCODE_LATEST_VERSION}-amd64.deb
fi
