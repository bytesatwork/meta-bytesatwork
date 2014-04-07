# Copyright (C) 2014 Urs Fässler <urs.fassler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)
#
# sets default passwords for images
#

IMAGE_INSTALL += " \
	base-passwd \
	shadow \
	"

setRootPassword() {
	sed 's%^root:\*:%root:x:%' \
	< ${IMAGE_ROOTFS}/etc/passwd \
	> ${IMAGE_ROOTFS}/etc/passwd.new;\
	mv ${IMAGE_ROOTFS}/etc/passwd.new ${IMAGE_ROOTFS}/etc/passwd ;

	sed 's%^root:[^:]*:%root:$6$YCPm7EGQ$H.YGkvGsdDkiHgAEiwu7PWhtPlKMGVmc7NIzSjAYXxe.KUKT3vevMHT721Qk10oF9jrEe08k44/puR70fnHJE.:%' \
	< ${IMAGE_ROOTFS}/etc/shadow \
	> ${IMAGE_ROOTFS}/etc/shadow.new;\
	mv ${IMAGE_ROOTFS}/etc/shadow.new ${IMAGE_ROOTFS}/etc/shadow ;
}

ROOTFS_POSTPROCESS_COMMAND += "\
	setRootPassword; \
	"

