function agi {
	apt-get install -y $@
}

function acs {
	apt-cache search "$@"
}

function apgi {
	aptitude install -y $@
}

function update {
	apt-get update && apt-get upgrade -y --allow-unauthenticated && apt-get autoremove -y && apt-get autoclean && su - fusion809 -c "apm update --no-confirm"
}

function updatef {
	apt-fast update && apt-fast upgrade -y --allow-unauthenticated && apt-fast autoremove -y && apt-fast autoclean && su - fusion809 -c "apm update --no-confirm"
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
