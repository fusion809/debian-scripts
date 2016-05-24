function sacs {
	sudo apt-cache search $@
}

function sagi {
	sudo apt-get install -y $@
}

function sagr {
	sudo apt-get remove -y $@
}

function sagu {
	sudo apt-get update
}

function update {
	sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove -y && apmup
}
