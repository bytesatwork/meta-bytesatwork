# Copyright (C) 2015 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

COMPATIBLE_MACHINE += "|bytepanel"

# lock kernel version to ti-linux-3.14.y (v3.14.43) + patches
SRCREV = "e19ba3d996f22ad8cc7187b30c18347aba0d594d"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://0001-device-tree-support-for-m2-and-bytepanel.patch \
	file://0002-ARM-dts-bytepanel-Remove-unneeded-configuration.patch \
	file://0003-bytepanel_defconfig-enable-CONFIG_LEGACY_PTYS.patch \
"

deltask compileconfigs

DEFCONFIG = "bytepanel_defconfig"

kernel_do_compile_prepend() {
	oe_runmake ${DEFCONFIG}
}
