function ovimup {
	cdobsh $1
	pkgver=$(wget -q https://github.com/vim/vim/releases -O - | grep "tar\.gz" | head -n 1 | cut -d '/' -f 5 | cut -d '"' -f 1 | sed 's/v//g' | sed 's/\.tar\.gz//g')
	baseversion=$(echo $pkgver | sed 's/\.[0-9]*$//g')
	patchversion=$(echo $pkgver | sed "s/$baseversion//g" | sed 's/\.//g')
	vim_baseversion=$(cat vim.spec | grep "%define.*baseversion" | sed 's/%define.*baseversion\s*//g' | head -n 1)
	vim_patchversion=$(cat vim.spec | grep "%define.*patchlevel" | sed 's/%define.*patchlevel\s*//g' | head -n 1)

	if [[ $baseversion != $vim_baseversion ]]; then
		sed -i -e "s|baseversion $vim_baseversion|baseversion $baseversion|g" vim.spec
		sed -i -e "s|$vim_baseversion|$baseversion|g" $HOME/OBS/home:fusion809/gvim-gtk2/PKGBUILD
		sed -i -e 's|Release:       [0-9].*|Release:       1|g' vim.spec
		if [[ "$1" == "vim" ]]; then
			sed -i -e "s|$vim_baseversion|$baseversion|g" $HOME/AUR/gvim-gtk2/PKGBUILD
			sed -i -e "s|$vim_baseversion|$baseversion|g" $PKG/PKGBUILDs/gvim-{gtk2,gtk3}/PKGBUILD
		fi
	fi

	if [[ $patchversion != $vim_patchversion ]]; then
		sed -i -e "s|patchlevel $vim_patchversion|patchlevel $patchversion|g" vim.spec

		if [[ -f PKGBUILD ]]; then
			sed -i -e "s|$vim_patchversion|$patchversion|g" PKGBUILD
		fi

		sed -i -e 's|Release:       [0-9].*|Release:       1|g' vim.spec

		if [[ "$1" == "vim" ]]; then
			sed -i -e "s|$vim_patchversion|$patchversion|g" {$HOME/OBS/home:fusion809/gvim-gtk2,$PKG/PKGBUILDs/gvim-gtk2,$PKG/PKGBUILDs/gvim-gtk3}/PKGBUILD

#			cd $HOME/AUR/gvim-gtk2
#			push "Bumping to $pkgver"
#			cd -

			cd $PKG/PKGBUILDs/gvim-gtk2
			push "Bumping to $pkgver"
			cd -

			cd $PKG/PKGBUILDs/gvim-gtk3
			push "Bumping to $pkgver"
			cd -

			cd $PKG/PKGBUILDs
			push "Bumping gvim submodules to $pkgver"
			cd -

			cd $HOME/OBS/home:fusion809/gvim-gtk2
			osc ci -m "Bumping to $pkgver"
			cd -

			vimaup
		fi
	fi

	if [[ $baseversion != $vim_baseversion ]] || [[ $patchversion != $vim_patchversion ]]; then
		osc ci -m "Bumping version to $pkgver"
	fi
}

function vimup {
	printf '\e[1;34m%-0s\e[m' "Running ovimup vim."
	printf "\n"
	ovimup vim

	printf '\e[1;34m%-0s\e[m' "Running ovimup vim-suse."
	printf "\n"
	ovimup "vim-suse"

	printf '\e[1;34m%-0s\e[m' "Running ovimup vim-redhat."
	printf "\n"
	ovimup "vim-redhat"
}

