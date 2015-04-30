# Copyright (C) 2015 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

COMPATIBLE_MACHINE += "|bytepanel"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://0001-device-tree-support-for-m2-and-bytepanel.patch \
	"

deltask compileconfigs

DEFCONFIG = "bytepanel_defconfig"

kernel_do_compile_prepend() {
	oe_runmake ${DEFCONFIG}
}
