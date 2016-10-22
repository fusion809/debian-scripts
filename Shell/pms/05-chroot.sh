function pacaur {
  chroot /mnt /usr/bin/pacaur-ubuntu
}

function archroot {
  mount /dev/sdb1 /mnt && arch-chroot /mnt /usr/bin/su-fusion809
}

function archup {
  chroot /mnt /usr/bin/update-ubuntu
}
