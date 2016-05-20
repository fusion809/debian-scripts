function abash {
	if [[ $# > 0 ]]
		then
			atom $HOME/Shell/"$1".sh
		else
			atom $HOME/.bashrc
	fi
}

function abashs {
	pushd $HOME/Shell
	if [[ -n $1 ]]
	        then
	            atom $1.sh
	        else
	            select x in `find . -name "*.sh"`
	            do
	               atom $x
	            break
	            done
	fi
	popd
}

function sbash {
	source $HOME/.bashrc
}

function nbash {
	nano $HOME/.bashrc
}

function gbash {
	gvim $HOME/.bashrc
        pushd $HOME/Shell
        if [[ -n $1 ]]
                then
                    gvim $1.sh
                else
                    select x in `find . -name "*.sh"`
                    do
                       gvim $x
                    break
                    done
        fi
        popd
}
