FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "\
    file://nftables.conf \
    file://nftables.init \
    file://nftables.service \
"
PACKAGECONFIG:remove = "readline"
PACKAGECONFIG:append = " editline"

inherit systemd update-rc.d

do_install:append() {
    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
        install -d ${D}${systemd_system_unitdir}
        install -m0644 ${WORKDIR}/nftables.service ${D}${systemd_system_unitdir}
    else
        install -d ${D}${INIT_D_DIR}
        install -m0755 ${WORKDIR}/nftables.init ${D}${INIT_D_DIR}/nftables
    fi
    install -m0644 ${WORKDIR}/nftables.conf ${D}${sysconfdir}/
}

INITSCRIPT_NAME = "nftables"
# Need 0 priority because networking is started as 01
# Shutdown is 90, so aim for quite close to it
INITSCRIPT_PARAMS = "defaults 0 85"

SYSTEMD_SERVICE:${PN} = "nftables.service"
