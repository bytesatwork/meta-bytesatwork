# Copyright (C) 2015 Daniel Ammann <daniel.ammann@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

# lock u-boot version to ti-u-boot-2014.07 (ti2014.10.03) + patches
SRCREV = "fb6ab76dad21e12b12d0f824fcfa2609a26ec695"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://0001-am335x_m2-Initial-commit.patch \
"
