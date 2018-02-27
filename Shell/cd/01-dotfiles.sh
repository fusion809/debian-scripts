function cdat {
    cd $HOME/.atom/$1
}

function cdls {
    cd $LS/$1
}

function cdlt {
    cd $LS/themes/$1
}

# Applications
function cdap {
    cd $AP/$1
}

function cdapi {
    cdap "integrated-development-environments/$1"
}

function cdapt {
    cdap "text-editors/$1"
}

function cdli {
    cd $LS/icons/$1
}

function cdd {
    cd $LS/desktop-directories/$1
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

# i3
function cdi3 {
    cd $HOME/.i3/$1
}
