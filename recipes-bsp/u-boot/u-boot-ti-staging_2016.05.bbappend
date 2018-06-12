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
	file://0017-EMIF-Set-OCP_Config-to-fix-LCD-pixel-shift.patch \
	file://0018-am335x_m2-Add-timings-for-1GB-DDR3-MT41K512M16.patch \
	file://0019-byteboard-Update-to-U-Boot-2016.05.patch \
	file://0020-am335x_m2_emmc-Fix-booting-from-eMMC.patch \
	file://0021-configs-Minimize-all-m2-and-m3-defconfigs.patch \
	file://0022-am335x_m2-Silence-distracting-compilation-warnings.patch \
	file://0023-am335x_m2-_emmc-Fix-defaults-for-m2config.patch \
	file://0024-m2-Add-RAM-detection-by-PMIC-querying.patch \
	file://0025-m2config-Add-production-data-to-EEPROM.patch \
	file://0026-board-bytesatwork-m2-Tweak-m2-muxing.patch \
	file://0027-m2config-Add-support-for-storing-mac-address-and-uid.patch \
	file://0028-am335x_m2-Enable-meminfo-command.patch \
	file://0029-cmd-cpuinfo-Add-a-basic-command-for-showing-cpu-info.patch \
	file://0030-sf-params-Add-support-for-W25Q128JV.patch \
"

do_deploy_append_bytepanel-emmc () {
	install -d ${DEPLOY_DIR_IMAGE}
	install ${B}/${SPL_BINARY}.byteswap ${DEPLOY_DIR_IMAGE}/${MLO_IMAGE}.byteswap
}
