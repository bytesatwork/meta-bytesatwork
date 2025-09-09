PACKAGECONFIG:remove = "vconsole"

do_install:append () {
	# Add baw touchscreen rules
	if [ -e  ${D}${sysconfdir}/udev/rules.d/touchscreen.rules ]; then
		cat <<EOF >>${D}${sysconfdir}/udev/rules.d/touchscreen.rules
# baw specific touchscreen rules
SUBSYSTEM=="input", KERNEL=="event[0-9]*", ENV{ID_INPUT_TOUCHSCREEN}=="1", SYMLINK+="input/touchscreen0"
EOF
	fi
}
