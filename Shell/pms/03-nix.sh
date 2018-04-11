function nixup {
    nix-channel --update && nix-env --upgrade
}

function nixs {
    nix search "$@"
}

function nixr {
    nix-env --uninstall "$@"
}

function nixi {
    nix-env -i "$@"
}
