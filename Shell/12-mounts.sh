if ! `grep -qs "/mnt/proc" /proc/mounts`; then
	sudo mount -t proc proc /mnt/proc
	sudo mount --rbind /dev /mnt/dev
	sudo mount --rbind /sys /mnt/sys
	sudo mount --rbind /tmp /mnt/tmp
	sudo mount --make-rslave /dev /mnt/dev
	sudo mount --make-rslave /sys /mnt/sys
	sudo mount --make-rslave /tmp /mnt/tmp
	sudo cp -L /etc/resolv.conf /mnt/etc
fi

function chot {
	sudo chroot /mnt /bin/bash
}
