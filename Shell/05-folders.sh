# Create GitHub-related folders
if ! [[ -d $GHUB ]]; then
	mkdir -p $ED
	mkdir -p $INS
	mkdir -p $PKG
	mkdir -p $SCR
	mkdir -p $THM
	mkdir -p $WEB
  mkdir -p $GHUBO
elif ! [[ -d $GHUBM ]]; then
  mkdir -p $GHUBM
elif ! [[ -d $GHUBO ]]; then
  mkdir -p $GHUBO
fi

# Create ~/Programs folder
if ! [[ -d $PRG ]]; then
  mkdir -p $PRG
fi

# Create other home folders
## Desktop
if ! [[ -d $HOME/Desktop ]]; then
  mkdir $HOME/Desktop
fi
## Documents
if ! [[ -d $HOME/Documents ]]; then
  mkdir $HOME/Documents
fi
## Downloads
if ! [[ -d $HOME/Downloads ]]; then
  mkdir $HOME/Downloads
fi
## Pictures
if ! [[ -d $HOME/Pictures ]]; then
  mkdir $HOME/Pictures
fi
## Videos
if ! [[ -d $HOME/Videos ]]; then
  mkdir $HOME/Videos
fi
## VirtualBox VMs
if ! [[ -d "$HOME/VirtualBox VMs" ]]; then
  mkdir "$HOME/VirtualBox VMs"
fi

# Run scripts in the folders directory
for i in $HOME/Shell/folders/*.sh
do
	. "$i"
done
