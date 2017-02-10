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
## VirtualBox VMs
if ! [[ -d "$HOME/VirtualBox VMs" ]]; then
  mkdir "$HOME/VirtualBox VMs"
fi

# Test if running in VM - test is from http://unix.stackexchange.com/questions/3685/find-out-if-the-os-is-running-in-a-virtual-environment
if ! `cat /proc/cpuinfo | grep hypervisor >/dev/null 2>&1`; then
	for i in $HOME/Shell/folders/*.sh
	do
	  . "$i"
	done
fi
