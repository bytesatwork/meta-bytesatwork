# Copyright (C) 2016 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.9:"

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
	file://0018-dts-bytepanel-add-label-for-display-and-enable-it-fo.patch \
	file://0019-video-logo-Add-option-to-select-largest-logo-automat.patch \
	file://0020-video-logo-Add-bytesatwork-logos.patch \
	file://0021-ARM-bytepanel_defconfig-Enable-logos-and-use-the-lar.patch \
	file://0022-ARM-bytepanel_defconfig-Adapt-to-4.9.patch \
	file://0023-ARM-dts-am43xx-Add-missing-pin-names.patch \
	file://0024-ARM-byteboard_defconfig-Adapt-to-4.9.patch \
	file://0025-ARM-dts-byteboard-Change-dts-to-dtsi.patch \
	file://0026-ARM-byteboard_defconfig-Enable-support-for-ethernet-.patch \
	file://0027-ARM-dts-byteboard-Improve-ethernet-performance.patch \
"

deltask compileconfigs

KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"

kernel_do_compile_prepend() {
	oe_runmake ${KERNEL_DEFCONFIG}
}
