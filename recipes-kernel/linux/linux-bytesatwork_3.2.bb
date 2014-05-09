# Copyright (C) 2014 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

DESCRIPTION = "bytes at work AG Linux Kernel"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
SECTION = "kernel"

DEFCONFIG = "am335x_bytepanel_defconfig"

inherit kernel

SRC_URI = "git://arago-project.org/git/projects/linux-am33x.git;protocol=git;branch=v3.2-staging;tag=v3.2_AM335xPSP_04.06.00.11 \
	   file://0001-bytePANEL-initial-commit.patch \
	   file://0002-bytePANEL-enable-NAND-and-EEPROM.patch \
	   file://0003-bytePANEL-Add-driver-for-EDT-FT5406.patch \
	   file://0004-DA8XX-Video-Driver-Added-10.4-Display-and-set-Emergi.patch \
	   file://0005-bytePANEL-Add-new-defconfig-for-bytepanel.patch \
	   file://0006-Firmware-Add-am335x-firmware-and-adapt-.gitignore.patch \
	   file://0007-bytePANEL-Enable-JFFS2-support-in-defconfig.patch \
	   file://0008-bytePANEL-Adjust-size-of-eeprom.patch \
	   file://0009-M2-Add-and-set-mach-type.patch \
	   file://0010-M2-Adjust-boardfile-to-new-PSP.patch \
	   file://0011-ARM-compressed-head.S-work-around-new-binutils-warni.patch \
	   file://0012-M2-Call-opp_update-to-handle-OPP50-Bootup.patch \
	   file://0013-bytePANEL-mux-i2c1-for-bytepanel-and-enable-Emerging.patch \
	   file://0014-bytePANEL-Fix-address-of-u-boot-environment.patch \
	   file://0015-bytePANEL-cleanup-board-file.patch \
	   file://0016-bytePANEL-added-backlight.patch \
	   file://0017-bytePANEL-added-bytes-at-work-boot-logo-for-bytePANE.patch \
	   file://0018-bytePANEL-renamed-private-objects-inlining-of-a-func.patch \
	   file://0019-M2-Updated-defconfig-for-BytePanel.patch \
	   file://0020-bytePANEL-Add-support-for-DataImage-LVDS-Display.patch \
	   file://0021-bytePANEL-init-GPU-if-available.patch \
	   file://0022-bytePANEL-Move-selection-of-display.patch \
	   file://0023-bytePANEL-Add-support-for-Chefree-LVDS-display.patch \
	   file://0024-bytePANEL-Add-display-ETML101000DH6.patch \
	   file://0025-bytePANEL-Add-display-ET050080DM6.patch \
	   file://0026-bytePANEL-Several-small-changes-for-display-ET070080.patch \
	   file://0027-bytePANEL-Fix-missing-USB-in-defconfig.patch \
	   file://0028-bytePANEL-Add-driver-for-new-FocalTech-CTP.patch"

S = "${WORKDIR}/git"

do_configure_prepend() {
	oe_runmake ${DEFCONFIG}
}
