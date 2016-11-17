# Copyright (C) 2016 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

# TODO update to current version. For now, this fixes the color swap issue.
SRCREV = "ba05e8fda276bd3a1b2ef970a868b229d5184246"
PV = "4.4.9+git${SRCPV}"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.4:"

B = "${S}"

SRC_URI += " \
	file://0001-device-tree-support-for-m2-and-bytepanel.patch \
	file://0002-ARM-dts-bytepanel-Remove-unneeded-configuration.patch \
	file://0003-bytepanel_defconfig-enable-CONFIG_LEGACY_PTYS.patch \
	file://0004-linux-4.1-support-for-m2-and-bytepanel.patch \
	file://0005-linux-4.4-support-for-m2-and-bytepanel.patch \
	file://0006-dts-remove-unsupported-displays-etm043080adh6-and-et.patch \
	file://0007-devicetree-adding-muxing-and-enable-UART1.patch \
	file://0008-defconfig-devicetree-adding-can-support.patch \
"

deltask compileconfigs

DEFCONFIG = "bytepanel_defconfig"
KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"

kernel_do_compile_prepend() {
	oe_runmake ${DEFCONFIG}
}
