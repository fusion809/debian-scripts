# Search APT for package(s)
function sacs {
    sudo apt-cache search "$@"
}

# show APT cache record
function saci {
    sudo apt-cache show "$@"
}

# Clean cache
function sagar {
    sudo apt-get autoremove -y
}

# Install package(s)
function sagi {
    sudo apt-get install -y --allow-unauthenticated "$@"
}

# Uninstall (remove) package(s)
function sagr {
    sudo apt-get remove -y "$@"
}

# Update APT cache
function sagu {
    sudo apt-get update
}

# Upgrade packages
function sagug {
    sudo apt-get dist-upgrade -y --allow-unauthenticated
}

# Update cache, upgrade packages, remove unneeded package(s) and update Atom packages.
function update {
    sagu && sagug && sagar && apmup && flatup && nixup
}

# Get keys
function sak {
    for i in "$@"
    do
         gpg --keyserver keyserver.ubuntu.com --recv $i && gpg --export --armor "$i" | sudo apt-key add -
    done
}

function pkern {
    dpkg --list | grep linux-image | awk '{ print $2 }' | sort -V | sed -n '/'`uname -r`'/q;p' | xargs sudo apt-get -y purge
}

function package-list {
    dpkg --list | awk '{ print $2 }' > package-list.txt
}

function inpat {
    sagi $(apt-cache search "$1" | sed 's/ \- .*//g' | grep -v "$2")
}
