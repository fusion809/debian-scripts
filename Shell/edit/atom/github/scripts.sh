# Scripts
function eds {
  atom "$GHUBM/scripts/$1"
}

## Arch Linux
function edas {
  eds "arch-scripts/$1"
}

## CentOS
function edcs {
  eds "centos-scripts/$1"
}

## Debian
function edds {
  eds "debian-scripts/$1"
}

## Fedora
function edfs {
  eds "fedora-scripts/$1"
}

## FreeBSD
function edfbs {
  eds "freebsd-scripts/$1"
}

## Gentoo
function edgs {
  eds "gentoo-scripts/$1"
}

## JScripts
function edjs {
  eds "JScripts/$1"
}
