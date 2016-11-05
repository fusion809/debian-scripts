# Atom config settings
function edat {
  atom $HOME/.atom
}

# editors
function ede {
  atom "$GHUBM/editors/$1"
}

## Atom packages
function eda {
  ede "atom/$1"
}

### fusion-ui theme
function edfu {
  eda "fusion-ui/$1"
}

### language-archlinux
function edla {
  eda "language-archlinux/$1"
}

### language-gfm2
function edlg {
  eda "language-gfm2/$1"
}

### language-ini-desktop
function edli {
  eda "language-ini-desktop/$1"
}

### language-unix-shell
function edls {
  eda "language-shellscript/$1"
}

### language-solus
function edlso {
  eda "language-solus/$1"
}
