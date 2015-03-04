# Copyright (C) 2015 Daniel Ammann <daniel.ammann@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)
#
# sets development image motd
#

setDevelopmentMotd() {
	echo "" \
		> ${IMAGE_ROOTFS}/etc/motd
	echo "##################################################" \
		>> ${IMAGE_ROOTFS}/etc/motd
	echo "# ATTENTION:                                     #" \
		>> ${IMAGE_ROOTFS}/etc/motd
	echo "# This image is for development purposes only.   #" \
		>> ${IMAGE_ROOTFS}/etc/motd
	echo "# Please do not use in a production environment. #" \
		>> ${IMAGE_ROOTFS}/etc/motd
	echo "##################################################" \
		>> ${IMAGE_ROOTFS}/etc/motd
	echo "" \
		>> ${IMAGE_ROOTFS}/etc/motd
}

ROOTFS_POSTPROCESS_COMMAND += " \
	setDevelopmentMotd; \
	"
