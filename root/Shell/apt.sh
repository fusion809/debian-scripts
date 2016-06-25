function agi {
	apt-get install -y $@
}

function apgi {
	aptitude install -y $@
}

function update {
	apt-get update && apt-get upgrade -y && apt-get autoremove -y && apt-get autoclean
}

function updatef {
	apt-fast update && apt-fast upgrade -y && apt-fast autoremove -y && apt-fast autoclean
}

function afi {
	apt-fast install -y $@
}

function ari {
	apt-fast remove -y $@
}

function afu {
	apt-fast update
}

function afup {
	apt-fast upgrade -y
}
