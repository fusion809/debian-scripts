# Search APT for package(s)
function sacs {
	sudo apt-cache search $@
}

# Install package(s)
function sagi {
	sudo apt-get install -y $@
}

# Uninstall (remove) package(s)
function sagr {
	sudo apt-get remove -y $@
}

# Update APT cache
function sagu {
	sudo apt-get update
}

# Update cache, upgrade packages, remove unneeded package(s) and update Atom packages.
function update {
	sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove -y && apmup
}
