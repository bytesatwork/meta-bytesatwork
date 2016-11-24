# Copyright (C) 2016 Daniel Ammann <daniel.ammann@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

DESCRIPTION = "U-Boot for bytePANEL"

inherit deploy

COMPATIBLE_MACHINE = "(ti33x)"
PROVIDES += "u-boot"

S = "${WORKDIR}/git"
B = "${S}"

FILES_${PN} = "u-boot.bin"
PARALLEL_MAKE = ""
PACKAGE_ARCH = "${MACHINE_ARCH}"

LIC_FILES_CHKSUM = "file://Licenses/README;md5=0507cd7da8e7ad6d6701926ec9b84c95"
LICENSE = "GPLv2+"

BRANCH ?= "ti-u-boot-2015.07"
SRCREV = "46c915c96358c426bb1f4dd1e25a9a805d93a24e"
SRC_URI = "git://git.ti.com/ti-u-boot/ti-u-boot.git;protocol=git;branch=${BRANCH}"
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
	file://0011-byteengine_m3-add-initial-byteENGINE-AM437X-support.patch \
	file://0012-add-support-for-gcc6.patch \
	file://0013-ddr3-fix-timings-for-256-and-512MB-DDR3-ram-add-ramc.patch \
	file://0014-m2config-add-DDR3-512MB-ram-new-PCB-Rev-and-Nand.patch \
	file://0015-m2config-change-ram-detection-order-first-try-eeprom.patch \
"
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-2015.07:"

SPL_BINARY = "MLO"
SPL_UART_BINARY = "u-boot-spl.bin"

do_compile() {
	export CROSS_COMPILE=arm-poky-linux-gnueabi-
	unset LDFLAGS
	export ARCH=arm
	ret=${@bb.data.setVar('CC', "arm-poky-linux-gnueabi-gcc  -march=armv7-a -marm  -mthumb-interwork -mtune=cortex-a8 --sysroot=${STAGING_DIR_HOST}", d)}

	make am335x_m2_config
	make CC="${CC} -std=gnu89"
}

do_deploy () {
	install -d ${DEPLOYDIR}

	f="u-boot.img"
	short_name="u-boot-${MACHINE}.img"
	full_name="u-boot-${MACHINE}-${PV}-${PR}.img"
	symlink_name="u-boot-${MACHINE}.img"

	install -m 644 ${S}/$f ${DEPLOYDIR}/$full_name
	(cd ${DEPLOYDIR} ; rm -f $symlink_name ; ln -sf $full_name $symlink_name)
	(cd ${DEPLOYDIR} ; rm -f $short_name ; ln -sf $full_name $short_name)
	(cd ${DEPLOYDIR} ; rm -f $f ; ln -sf $full_name $f)

	f="MLO"
	short_name="MLO-${MACHINE}"
	full_name="MLO-${MACHINE}-${PV}-${PR}"
	symlink_name="MLO-${MACHINE}"

	install -m 644 ${S}/$f ${DEPLOYDIR}/$full_name
	(cd ${DEPLOYDIR} ; rm -f $symlink_name ; ln -sf $full_name $symlink_name)
	(cd ${DEPLOYDIR} ; rm -f $short_name ; ln -sf $full_name $short_name)
	(cd ${DEPLOYDIR} ; rm -f $f ; ln -sf $full_name $f)
}

addtask deploy before do_build after do_compile
