## Installers
function edi {
  atom "$GHUBM/installers/$1"
}

function edac {
  edi "atom-custom/$1"
}

# Atom Installer
function edai {
  edi "atom-installer/$1"
}

# Brackets Installer
function edbi {
  edi "brackets-installer/$1"
}

# Komodo Installer
function edki {
  edi "komodo-installer/$1"
}

# LightTable Installer
function edli {
  edi "lighttable-installer/$1"
}

# VSCode Installer
function edvsi {
  edi "vscode-installer/$1"
}
