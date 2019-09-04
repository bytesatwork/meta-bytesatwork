# Don't use rng-tools, use haveged instead
RRECOMMENDS_${PN}-sshd_remove_class-target = " rng-tools"
RRECOMMENDS_${PN}-sshd_append_class-target = " haveged"
