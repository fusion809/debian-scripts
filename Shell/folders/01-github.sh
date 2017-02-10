function sps {
  _L=("arch-scripts"
  "centos-scripts"
  "debian-scripts"
  "fedora-scripts"
  "freebsd-scripts"
  "gentoo-scripts"
  "JScripts"
  "mageia-scripts"
  "opensuse-scripts"
  "pisi-scripts"
  "python-scripts"
  "sabayon-scripts"
  "slackware-scripts")

  for i in "${_L[@]}"
  do
    if ! [[ -d "$SCR/$i" ]]; then
      git clone https://github.com/fusion809/$i "$SCR/$i"
    fi
  done
}

if ! [[ -d $FGI ]]; then
  if ! [[ -f $HOME/.fgilock ]]; then
    printf "The Hornery was not locally detected on this system; do you want to clone it to $FGI? [y/n]"
    read -p $fgilock
  fi
  if [[ $fgilock == "y" ]]; then
    git clone https://github.com/fusion809/fusion809.github.io $FGI
  else
    echo $fgilock > $HOME/.fgilock
  fi
fi
