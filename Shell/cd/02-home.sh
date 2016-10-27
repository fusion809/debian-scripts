function cdh {
	cd "$HOME/$1"
}

function cdam {
	cdh "atom-modules/$1"
}

function cdm {
	cdh "Music/$1"
}

function cddc {
	cdh "Documents/$1"
}

function cdcfe {
	cd "$CC/$1"
}

function cdman {
	cdh "Documents/Manpages/$1"
}

alias cdmn=cdman

# Pictures
function cdpi {
	cdh "Pictures/$1"
}

function cdi {
	cdpi "Icons/$1"
}

function cds {
	cdpi "Screenshots/$1"
}

function cdsh {
	cdh "Shell/$1"
}

function cdt {
	cdh "Textbooks/$1"
}

# VirtualBox
function cdv {
	cdh "VirtualBox VMs/$1"
}

function cdvi {
	cdv "ISO/$1"
}

function cdvbm {
	cdh "Desktop/VirtualBox machines/$1"
}

alias cdvb=cdvbm
#- End of VirtualBox -#

function cdvs {
	cdh "Videos/SO/$1"
}
