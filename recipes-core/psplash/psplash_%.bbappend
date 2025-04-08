SPLASH_IMAGES = "file://bytesatwork.png;outsuffix=default"
FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://0001-psplash-colors.h-Use-bytesatwork-color.patch \
	file://psplash-bar.png \
"

do_configure:append() {
	cp ${WORKDIR}/psplash-bar.png ${S}/base-images
}
