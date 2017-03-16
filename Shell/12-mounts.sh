if ! `grep -qs "/mnt/proc" /proc/mounts`; then
	sudo mount -t proc proc /mnt/opensuse/proc
	sudo mount --rbind /dev /mnt/opensuse/dev
	sudo mount --rbind /sys /mnt/opensuse/sys
	sudo mount --rbind /tmp /mnt/opensuse/tmp
	sudo mount --make-rslave /dev /mnt/opensuse/dev
	sudo mount --make-rslave /sys /mnt/opensuse/sys
	sudo mount --make-rslave /tmp /mnt/opensuse/tmp
	sudo cp -L /etc/resolv.conf /mnt/opensuse/etc
fi

function chot {
	sudo chroot /mnt /bin/bash
}
