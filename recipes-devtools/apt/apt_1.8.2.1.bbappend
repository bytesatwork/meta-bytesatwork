FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += " \
	file://99bytesatwork \
"

do_install_append() {
	install -D -m 0644 ${WORKDIR}/99bytesatwork ${D}${sysconfdir}/apt/apt.conf.d/
}
