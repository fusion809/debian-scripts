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

# installers
function cdin {
	cdgm "installers/$1"
}

function cdac {
	cdin "atom-custom/$1"
}

function cdai {
	cdin "atom-installer/$1"
}

function cdbi {
	cdin "brackets-installer/$1"
}

function cdki {
	cdin "komodo-installer/$1"
}

function cdli {
	cdin "lighttable-installer/$1"
}

function cdvsi {
	cdin "vscode-installer/$1"
}

# Scripts
function cdsc {
	cdgm "scripts/$1"
}

function cdds {
	cdsc "debian-scripts/$1"
}

alias cdss=cdds

function cdjs {
	cdsc "JScripts/$1"
}

function cdpy {
	cdsc "python-scripts/$1"
}

# Websites
function cdw {
	cdgm "websites/$1"
}
function cdfgi {
	cdw "fusion809.github.io/$1"
}

# Packaging
function cdpk {
	cdgm "packaging/$1"
}

alias cdpck=cdpk

function cdaim {
	cdpk "AppImages/$1"
}

function cdoaim {
	cdgo "AppImages/$1"
}
