function edpk {
  atom "$GHUBM/packaging/$1"
}

function eddae {
  edpk "docker-atom-editor/$1"
}

function edaim {
  edpk "AppImages/$1"
}
