# Copyright (C) 2015 Daniel Ammann <daniel.ammann@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)
#
# sets development image motd
#

setDevelopmentMotd() {
	cat >${IMAGE_ROOTFS}/etc/motd <<EOF

##################################################
# ATTENTION:                                     #
# This image is for development purposes only.   #
# Please do not use in a production environment. #
##################################################

EOF
}

ROOTFS_POSTPROCESS_COMMAND += " \
	setDevelopmentMotd; \
	"
