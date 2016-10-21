function gitc {
	for i in "$@"
	do
		if ! [[ -d $GHUBM ]]; then
			mkdir -p $GHUBM
		fi
		if [[ $i == 'atom' ]]; then
			if ! [[ -d $HOME/.atom ]]; then
				mkdir $HOME/.atom
			fi
			cd $HOME/.atom
			gitsw
			rm *.cson *.less *coffee
			git pull origin master
			cd -
		elif ! [[ -d $GHUBM/$i ]]; then
			git clone https://github.com/fusion809/$i.git $GHUBM/$i
		fi
		pushd $GHUBM/$i
		gitsw
		popd
	done
}

function gitco {
	if [[ -n "$3" ]]; then
		git clone https://github.com/$1/$2 $GHUBO/$3
	else
		git clone https://github.com/$1/$2 $GHUBO/$2
	fi
}


function ginit {
	git init && git add --all && gitsw
}

function eshup {
	cp $HOME/.emacs $GHUBM/editors/emacs
	cde
	push "$1"
	cd -
}
