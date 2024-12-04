# see meta-oe/recipes-shells/zsh/zsh_5.8.bb
# undo zsh->sh customization
ALTERNATIVE_LINK_NAME_VARDEPS:remove = "sh:/bin/sh"
ALTERNATIVE_TARGET_VARDEPS:remove = "sh:/bin/zsh"
# add zsh->bash customization
ALTERNATIVE:${PN} = "bash"
ALTERNATIVE_LINK_NAME[bash] = "${base_bindir}/bash"
ALTERNATIVE_TARGET[bash] = "${base_bindir}/${BPN}"
ALTERNATIVE_PRIORITY = "200"
FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI:append = " \
	file://zprofile \
"
EXTRA_OECONF:remove = "--disable-dynamic"
EXTRA_OECONF:append = " --enable-dynamic"
RPROVIDES:${PN} += "bash"
RPROVIDES:${PN}-dev += "bash-dev"
do_install:append() {
	install -D -m 0755 ${WORKDIR}/zprofile ${D}${sysconfdir}/zprofile
}
