# Copyright (C) 2020 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

SUMMARY = "bytes at work AG minimal root file system"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

IMAGE_INSTALL += "\
	packagegroup-core-boot \
	\
	apt \
	coreutils \
	dhcp-client \
	kernel-modules \
	openssh-scp \
	openssh-sftp-server \
	openssh-ssh \
	openssh-sshd \
	vim \
"

IMAGE_LINGUAS = " "
IMAGE_FEATURES += "package-management"

# Make the rootfs big enough (6GB), so we're able to install additional packages
IMAGE_ROOTFS_SIZE = "6291456"

inherit core-image
require password.inc
