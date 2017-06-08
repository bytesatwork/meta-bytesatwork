# Copyright (C) 2017 Daniel Ammann <daniel.ammann@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

DESCRIPTION = "CAN setup helper script"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

PV = "0.3"
PR = "r0"

SRC_URI = "file://startcan"

inherit allarch

S = "${WORKDIR}"

RDEPENDS_${PN} = "iproute2"
FILES_${PN} += "/usr/bin/startcan"

do_install() {
	install -D -m 0755 ${WORKDIR}/startcan ${D}/${bindir}/startcan
}
