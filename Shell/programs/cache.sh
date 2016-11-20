function upcac {
  sudo update-icon-caches /usr/share/icons/*
}

function maccp {
  sudo cp /usr/share/icons/Numix-Circle/48/apps/$1.svg /usr/share/icons/MacBuntu-OS/apps/128 && sudo rm /usr/share/icons/MacBuntu-OS/*/apps/$1.png
}

function upmac {
  sudo update-icon-caches /usr/share/icons/MacBuntu-OS
}
