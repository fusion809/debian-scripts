function agi {
	apt-get install -y $@
}

function apgi {
	aptitude install -y $@
}

function update {
	apt-get update && apt-get upgrade -y && apt-get autoremove -y && apt-get autoclean
}
