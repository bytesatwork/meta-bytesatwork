# Copyright (C) 2015 Daniel Ammann <daniel.ammann@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

# lock u-boot version to ti-u-boot-2014.07 (ti2014.10.03) + patches
SRCREV = "fb6ab76dad21e12b12d0f824fcfa2609a26ec695"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://0001-am335x_m2-Initial-commit.patch \
	file://0002-am335x_m2-Delete-wrong-I2C1-configuration.patch \
	file://0003-am335x_m2-Remove-wrong-GPIO-muxing.patch \
	file://0004-am335x_m2-Cleanup-unused-code.patch \
	file://0005-m2config-add-method-to-read-m2-configuration-from-ee.patch \
	file://0006-am335x_m2-boot-from-NAND-and-update-NAND-from-microS.patch \
	file://0007-ARM-add-gcc5-support.patch \
	file://0008-am335x_m2-adjust-mtdparts-command-line-argument-to-l.patch \
	file://0009-am335x_m2-pass-mtdparts-command-line-argument-to-the.patch \
"
