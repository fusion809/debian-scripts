function cdat {
	cd $HOME/.atom/$1
}

# Applications
function cdap {
	cd $AP/$1
}

function cdd {
	cd $HOME/.local/share/desktop-directories/$1
}

# Icons
function cdic {
	cd $IC/$1
}

function cdvap {
	cdap VirtualBox/$1
}

alias cdapv=cdvap

# Menus
function cdmen {
	cd $HOME/.config/menus/$1
}

function cdz {
	cd $HOME/.oh-my-zsh/$1
}
