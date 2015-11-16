function nbash {
	nano ~/.bashrc
}

function nbashs {
	pushd ~/Shell
	select x in `find . -name "*.sh"`
	do
	      nano $x
	 break
	done
	popd
}

function sbash {
	source ~/.bashrc
}

function abash {
	atom ~/.bashrc
}

function abashs {
	select x in `find . -name "*.sh"`
	do
	  atom $x
	 break
	done
}
