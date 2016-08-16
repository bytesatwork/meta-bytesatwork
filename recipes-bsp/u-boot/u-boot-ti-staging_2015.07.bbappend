# Copyright (C) 2016 Daniel Ammann <daniel.ammann@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-2015.07:"

SRC_URI += " \
	file://0001-am335x_m2-Initial-commit.patch \
	file://0002-am335x_m2-Delete-wrong-I2C1-configuration.patch \
	file://0003-am335x_m2-Remove-wrong-GPIO-muxing.patch \
	file://0004-am335x_m2-Cleanup-unused-code.patch \
	file://0005-m2config-add-method-to-read-m2-configuration-from-ee.patch \
	file://0006-am335x_m2-boot-from-NAND-and-update-NAND-from-microS.patch \
	file://0007-am335x_m2-adjust-mtdparts-command-line-argument-to-l.patch \
	file://0008-am335x_m2-pass-mtdparts-command-line-argument-to-the.patch \
	file://0009-am335x_m2-Adapt-to-ti-u-boot-2015.07-and-cleanup.patch \
	file://0010-am335x_m2-boot-from-nand-if-mmc-has-no-kernel.patch \
"
