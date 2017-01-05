export DISTRO=$(cat /etc/os-release | cut -d '"' -f 2 | head -n 1)
