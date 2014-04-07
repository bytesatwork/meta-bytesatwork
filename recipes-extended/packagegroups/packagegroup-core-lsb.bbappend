# Copyright (C) 2014 Urs Fässler <urs.fassler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

# we remove everything that depends on X

RDEPENDS_packagegroup-core-lsb_remove = "packagegroup-core-lsb-desktop"
RDEPENDS_packagegroup-core-lsb-desktop = ""
RDEPENDS_packagegroup-core-lsb-runtime-add_remove = "mkfontdir"
RDEPENDS_packagegroup-core-lsb-core_remove = "xdg-utils"

