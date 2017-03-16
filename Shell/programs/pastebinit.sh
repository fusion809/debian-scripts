function pit {
	pastebinit -i "$@" -b http://paste2.org
}

function spit {
	sudo pastebinit -i "$@" -b http://paste2.org
}
