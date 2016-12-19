# GHUB variables
export GHUB=$HOME/GitHub
export GHUBM=$GHUB/mine

# GHUBO
export GHUBO=$GHUB/others
if ! [[ -d $GHUBO ]]; then
  mkdir -p $GHUBO
fi

# EDT
export EDT=$GHUBM/editors
if ! [[ -d $EDT ]]; then
  mkdir -p $EDT
fi

# SCR
export SCR=$GHUBM/scripts
if ! [[ -d $SCR ]]; then
  mkdir -p $SCR
fi

# PKG
export PKG=$GHUBM/packaging
if ! [[ -d $PKG ]]; then
  mkdir -p $PKG
fi

# WEB
export WEB=$GHUBM/websites
if ! [[ -d $WEB ]]; then
  mkdir -p $WEB
fi

# ATO
export ATO=$GHUBM/atom
if ! [[ -d $ATO ]]; then
  mkdir -p $ATO
fi

# ATO
export INS=$GHUBM/installers
if ! [[ -d $INS ]]; then
  mkdir -p $INS
fi

# FGI
export FGI=$WEB/fusion809.github.io
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
export DBS=$SCR/debian-scripts
export PY=$SCR/python-scripts
export SHL=$HOME/Shell
