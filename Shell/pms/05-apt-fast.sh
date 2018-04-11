if ! [[ -f /usr/bin/apt-fast ]]; then
    sagi aria2 git
    git clone https://github.com/ilikenwf/apt-fast /tmp/apt-fast
    sudo cp /tmp/apt-fast/apt-fast /usr/bin
    sudo chmod +x /usr/bin/apt-fast
    sudo cp /tmp/apt-fast/apt-fast.conf /etc
fi

function saguf {
    sudo apt-fast update
}

alias safu=saguf

function sagupf {
    sudo apt-fast dist-upgrade -y --allow-unauthenticated
}

alias safup=sagupf

function sagif {
    sudo apt-fast install -y "$@"
}

alias safi=sagif

function sagrf {
    sudo apt-fast remove -y "$@"
}

function safa {
    sudo apt-fast autoremove -y
}

function updatef {
    safu && safup && safa && apmup && flatup && nixup
}

# Install packages with "$1" in name or description and "$2" not in description
function inpatf {
    safi $(apt-cache search "$1" | sed 's/ \- .*//g' | grep -v "$2")
}
