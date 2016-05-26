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
"

deltask compileconfigs

DEFCONFIG = "bytepanel_defconfig"

kernel_do_compile_prepend() {
	oe_runmake ${DEFCONFIG}
}
