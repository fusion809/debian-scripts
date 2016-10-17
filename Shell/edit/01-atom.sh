# Atom Installer
function edai {
  atom $GHUBM/atom-installer/$1
}

function edac {
  atom $GHUBM/atom-custom/$1
}

# Atom config settings
function edat {
  atom $HOME/.atom
}

# Brackets Installer
function edbi {
  atom $GHUBM/brackets-installer/$1
}

# Blog
function edfgi {
  atom $GHUBM/fusion809.github.io/$1
}

alias edblog=edfgi

# fusion-ui theme
function edfi {
  atom $GHUBM/fusion-ui/$1
}

# Komodo Installer
function edki {
  atom $GHUBM/komodo-installer/$1
}

# LightTable Installer
function edli {
  atom $GHUBM/lighttable-installer/$1
}

# PKGBUILDs
function edpk {
  atom $GHUBM/PKGBUILDs/$1
}

# Shell scripts
function edsh {
  atom $HOME/Shell/$1
}

# VSCode Installer
function edvsi {
  atom $GHUBM/vscode-installer/$1
}
