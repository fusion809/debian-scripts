# Search APT for package(s)
function sacs {
	sudo apt-cache search $@
}

# Clean cache
function sagar {
	sudo apt-get autoremove -y
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

# Upgrade packages
function sagug {
	sudo apt-get upgrade -y
}

# Update cache, upgrade packages, remove unneeded package(s) and update Atom packages.
function update {
	sagu && sagug && sagar && apmup
}

# Get keys
function sak {
	for i in "$@"
	do
		gpg --keyserver keyserver.ubuntu.com --recv $i && gpg --export --armor $i | sudo apt-key add -
	done
}
