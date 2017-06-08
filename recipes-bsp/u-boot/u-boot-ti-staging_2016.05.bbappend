MLO_IMAGE ??= "${SPL_BINARY}"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-2016.05:"
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
	file://0012-ddr3-fix-timings-for-256-and-512MB-DDR3-ram-add-ramc.patch \
	file://0013-m2config-add-DDR3-512MB-ram-new-PCB-Rev-and-Nand.patch \
	file://0014-m2config-change-ram-detection-order-first-try-eeprom.patch \
	file://0015-u-boot-2016.05-support-for-m2.patch \
	file://0016-add-M2-Rev4-with-EMMC-and-SPI-Nor.patch \
"

do_deploy_append_bytepanel-emmc () {
	install -d ${DEPLOY_DIR_IMAGE}
	install ${B}/${SPL_BINARY}.byteswap ${DEPLOY_DIR_IMAGE}/${MLO_IMAGE}.byteswap
}
