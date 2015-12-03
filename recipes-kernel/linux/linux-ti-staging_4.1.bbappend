# Copyright (C) 2015 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

COMPATIBLE_MACHINE += "|bytepanel"

# lock kernel version to ti-lsk-linux-4.1.y (v4.1.6) + patches
SRCREV = "6d77561dd0c6b18bd5e9abf45dc215b84ebe338f"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://0001-device-tree-support-for-m2-and-bytepanel.patch \
	file://0002-ARM-dts-bytepanel-Remove-unneeded-configuration.patch \
	file://0003-bytepanel_defconfig-enable-CONFIG_LEGACY_PTYS.patch \
	file://0004-linux-4.1-support-for-m2-and-bytepanel.patch \
"

deltask compileconfigs

DEFCONFIG = "bytepanel_defconfig"

kernel_do_compile_prepend() {
	oe_runmake ${DEFCONFIG}
}
