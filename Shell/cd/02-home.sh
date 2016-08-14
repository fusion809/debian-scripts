function cdam {
	cd $srcdir/$1
}
function cdm {
	cd $HOME/Music/$1
}

function cddc {
	cd $HOME/Documents/$1
}

function cdcl {
	cddc CodeLite/firstExample/$1
}

function cdman {
	cd $HOME/Documents/Manpages/$1
}

alias cdmn=cdman

# Pictures
function cdpi {
	cd $HOME/Pictures/$1
}

function cdi {
	cdpi Icons/$1
}

function cds {
	cdpi Screenshots/$1
}

function cdps {
	cd $HOME/ps_mem/$1
}

function cdsh {
	cd $HOME/Shell/$1
}

function cdt {
	cd $HOME/Textbooks/$1
}

# VirtualBox
function cdv {
	cd "$HOME/VirtualBox VMs/$1"
}

function cdvi {
	cdv ISO/$1
}

function cdvbm {
	cd "$HOME/Desktop/VirtualBox machines/$1"
}

alias cdvb=cdvbm
#- End of VirtualBox -#

function cdy {
	cd $HOME/Videos/YouTube/$1
}

function cdvs {
	cd $HOME/Videos/Spec/$1
}
