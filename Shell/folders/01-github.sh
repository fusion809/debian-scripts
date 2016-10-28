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
