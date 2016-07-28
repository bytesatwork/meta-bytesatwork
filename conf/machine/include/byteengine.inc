# Copyright (C) 2014-2016 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

#@TYPE: Machine
#@NAME: byteENGINE
#@DESCRIPTION: byteENGINE by bytes at work AG

SERIAL_CONSOLES = "115200;ttyO0"
IMAGE_FSTYPES = "tar.bz2 bytesatwork-sdimg"

KERNEL_IMAGETYPE = "uImage"
PREFERRED_PROVIDER_virtual/kernel = "linux-ti-staging"
PREFERRED_PROVIDER_virtual/bootloader = "u-boot-ti-staging"
PREFERRED_VERSION_linux-ti-staging = "4.4%"
PREFERRED_VERSION_u-boot-ti-staging = "2015.07%"
