DISCLAMER_TEXT = " \
================================= DISCLAIMER ==================================\n \
This is intended for development purposes only and not designed for production.\n \
You must adapt it to comply with your company's security policies.\n \
===============================================================================\n\n"

do_install:append() {
	printf "${DISCLAMER_TEXT}" >> ${D}${sysconfdir}/issue
	printf "${DISCLAMER_TEXT}" >> ${D}${sysconfdir}/issue.net
}
