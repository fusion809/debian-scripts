function saguf {
  sudo apt-fast update
}

alias safu=saguf

function sagupf {
  sudo apt-fast upgrade -y --allow-unauthenticated
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
  safu && safup && safa && apmup
}

function inpatf {
	safi $(apt-cache search "$1" | sed 's/ \- .*//g' | grep -v "$2")
}
