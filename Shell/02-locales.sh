function locale-install {
    sudo locale-gen "en_AU.UTF-8"
    sudo dpkg-reconfigure locales
}
