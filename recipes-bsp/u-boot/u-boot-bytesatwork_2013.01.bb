# Copyright (C) 2014 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

DESCRIPTION = "u-boot bootloader for byteENGINE M2 by bytes at work AG"

require recipes-bsp/u-boot/u-boot-ti.inc

SRC_URI = "git://git.ti.com/ti-u-boot/ti-u-boot.git;protocol=git;branch=${BRANCH} \
	   file://0001-M2-Add-module-M2.patch \
           file://0002-M2-Enable-u-boot-environment-in-NAND.patch \
           file://0003-M2-Disable-cursor-on-framebuffer.patch"

SRCREV = "540aa6fbb0c9274bda598f7e8819ed28259cad6b"

BRANCH = "ti-u-boot-2013.01.01-amsdk-06.00.00.00"

# Set the name of the SPL that will built so that it is also packaged with u-boot.
SPL_BINARY = "MLO"
