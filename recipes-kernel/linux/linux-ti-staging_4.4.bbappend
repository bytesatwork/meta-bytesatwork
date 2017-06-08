# Copyright (C) 2016 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.4:"

SRC_URI += " \
	file://0001-device-tree-support-for-m2-and-bytepanel.patch \
	file://0002-ARM-dts-bytepanel-Remove-unneeded-configuration.patch \
	file://0003-bytepanel_defconfig-enable-CONFIG_LEGACY_PTYS.patch \
	file://0004-linux-4.1-support-for-m2-and-bytepanel.patch \
	file://0005-linux-4.4-support-for-m2-and-bytepanel.patch \
	file://0006-dts-remove-unsupported-displays-etm043080adh6-and-et.patch \
	file://0007-devicetree-adding-muxing-and-enable-UART1.patch \
	file://0008-defconfig-devicetree-adding-can-support.patch \
	file://0009-ARM-dts-am43xx-add-AM437x-pin-names.patch \
	file://0010-ARM-dts-byteengine-m3-Add-initial-dtsi.patch \
	file://0011-ARM-dts-byteboard-Add-initial-dts.patch \
	file://0012-ARM-byteboard_defconfig-Add-initial-defconfig.patch \
	file://0013-dts-bytepanel-switch-blue-red-wiring-for-et070080dh6.patch \
	file://0014-devicetree-adding-et10-display.patch \
	file://0015-bytepanel-defconfig-add-spi-nor.patch \
	file://0016-spinor-adding-m25pe40.patch \
	file://0017-byteenging-m2-adding-emmc-support-in-dts.patch \
"

deltask compileconfigs

DEFCONFIG = "bytepanel_defconfig"
KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"

kernel_do_compile_prepend() {
	oe_runmake ${DEFCONFIG}
}
