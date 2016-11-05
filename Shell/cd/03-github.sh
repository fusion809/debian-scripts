# GitHub
function cdg {
	cd "$GHUB/$1"
}

function cdgm {
	cd "$GHUBM/$1"
}

for i in $HOME/Shell/cd/github/*.sh
do
	. "$i"
done
