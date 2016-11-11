# Packaging
function cdpk {
	cdgm "packaging/$1"
}

alias cdpck=cdpk

function cdaim {
	cdpk "AppImages/$1"
}

function cddae {
	cdpk "docker-atom-editor/$1"
}
