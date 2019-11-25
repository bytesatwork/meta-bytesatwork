# Copyright (C) 2014 Urs Fässler <urs.fassler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

SUMMARY = "bytes at work AG collection of developer tools"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

inherit packagegroup
inherit allarch

RDEPENDS_${PN} = "\
	binutils \
	binutils-symlinks \
	bzip2 \
	can-utils \
	coreutils \
	dosfstools \
	e2fsprogs \
	e2fsprogs-mke2fs \
	evtest \
	file \
	gdb \
	gdbserver \
	htop \
	iproute2 \
	libsocketcan \
	man \
	man-pages \
	mtd-utils \
	mtd-utils-jffs2 \
	mtd-utils-misc \
	mtd-utils-ubifs \
	nano \
	openssh-scp \
	openssh-sshd \
	perf \
	procps \
	screen \
	startcan \
	strace \
	tar \
	tcpdump \
	time \
	tslib \
	tslib-calibrate \
	tslib-conf \
	tslib-tests \
	usbutils \
	util-linux-sfdisk \
	valgrind \
	vim \
	wget \
	"

