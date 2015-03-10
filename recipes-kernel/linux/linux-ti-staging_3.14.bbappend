# Copyright (C) 2015 Oliver Stäbler <oliver.staebler@bytesatwork.ch>                                                                                                                         
# Released under the MIT license (see COPYING.MIT for the terms)

COMPATIBLE_MACHINE += "|bytepanel"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://0001-device-tree-support-for-m2-and-bytepanel.patch \
	"

KERNEL_DEVICETREE = "bytepanel.dtb bytepanel-et070080dh6.dtb bytepanel-et10.dtb bytepanel-etm043080adh6.dtb"
