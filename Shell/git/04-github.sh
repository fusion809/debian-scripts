# git clone one of my GitHub repos
function gitc {
	for i in "$@"
	do
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
			git clone https://github.com/fusion809/$i.git $i
		fi
		pushd $i
		gitsw
		popd
	done
}

# git clone another person's GitHub repos
function gitco {
	if [[ -n "$3" ]]; then
		git clone https://github.com/$1/$2 $GHUBO/$3
	else
		git clone https://github.com/$1/$2 $GHUBO/$2
	fi
}

# Initialize a new GitHub repository
function ginit {
	git init && git add --all && gitsw
}

# Push ~/.emacs file to my emacs GitHub repo
function eshup {
	cp $HOME/.emacs $GHUBM/editors/emacs
	cde
	push "$1"
	cd -
}
