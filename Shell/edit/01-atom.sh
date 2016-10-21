# Atom config settings
function edat {
  atom $HOME/.atom
}

## Installers
function edac {
  atom $GHUBM/installers/atom-custom/$1
}

# Atom Installer
function edai {
  atom $GHUBM/installers/atom-installer/$1
}

# Brackets Installer
function edbi {
  atom $GHUBM/installers/brackets-installer/$1
}

# Komodo Installer
function edki {
  atom $GHUBM/installers/komodo-installer/$1
}

# LightTable Installer
function edli {
  atom $GHUBM/installers/lighttable-installer/$1
}

# VSCode Installer
function edvsi {
  atom $GHUBM/installers/vscode-installer/$1
}

## Websites
# Blog
function edfgi {
  atom $GHUBM/websites/fusion809.github.io/$1
}

alias edblog=edfgi

# fusion-ui theme
function edfi {
  atom $GHUBM/atom/fusion-ui/$1
}

# Shell scripts
function edsh {
  atom $HOME/Shell/$1
}

function edsp {
  atom $HOME/Documents/CodeLite/CPP-Math-Projects/Simple-Pendulum
}
