# GitHub
function cdg {
	cd "$GHUB/$1"
}

function cdgm {
	cd "$GHUBM/$1"
}

function cdga {
	cdgm "atom/$1"
}

function cdgo {
	cd "$GHUBO/$1"
}

function cdac {
	cdgm "atom-custom/$1"
}

function cdai {
	cdgm "atom-installer/$1"
}

function cdds {
	cdgm "debian-scripts/$1"
}

alias cdss=cdds

function cdfgi {
	cdgm "fusion809.github.io/$1"
}

function cdvsi {
	cdgm "vscode-installer/$1"
}

function cdpk {
	cd "$PKG/$1"
}

function cdpy {
	cdgm "python-scripts/$1"
}
