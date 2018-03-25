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
	cd "$CCM/$1"
}

function cdman {
	cdh "Documents/Manpages/$1"
}

alias cdmn=cdman

function cdtx {
    cdh "Documents/Text files/$1"
}

function cddo {
    cdh "Downloads/$1"
}

function cdobs {
	cd $HOME/OBS/$1
}

function cdobsh {
	cdobs home:fusion809/$1
}
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

alias cdpis=cds

function cdpa {
    cdp "AppImage/$1"
}

function cdpd {
    cdp "Deb/$1"
}

function cdpe {
    cdp "exe/$1"
}

function cdpr {
    cdp "rpm/$1"
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
    cdv "ISOs/$1"
}

function cdvbm {
    cdh "Desktop/VirtualBox machines/$1"
}

alias cdvb=cdvbm
#- End of VirtualBox -#

function cdvs {
    cdh "Videos/SO/$1"
}

function cdvy {
    cdh "Videos/YouTube/$1"
}
