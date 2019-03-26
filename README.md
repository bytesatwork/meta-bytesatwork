meta-bytesatwork
================================


Introduction
-------------------------
This is the official OpenEmbedded/Yocto BSP layer for bytePANEL by bytes at
work AG.

It is hosted on https://github.com/bytesatwork/meta-bytesatwork.git

This layer depends on:

	URI: git://git.yoctoproject.org/meta-ti
	layer: meta-ti
	branch: master
	commit: 2f28749040692b2267cb72303365bf3d2a391fef

	URI: git://git.openembedded.org/meta-openembedded
	layers: meta-oe, meta-networking, meta-python
	branch: thud


BSP
-------------------------
This meta layer provides the Board Support Package (U-Boot and Linux kernel)
for "bytePANEL" by bytes at work AG. Simply set the variable MACHINE to either
"bytepanel", or "bytepanel-emmc" to use this BSP.

Linux Kernel recipe: linux-ti-staging

U-Boot recipe: u-boot-ti-staging


Distro/Images
-------------------------
Besides the BSP, this layer also provides the distribution "poky-bytesatwork"
and an image to get you started quickly:

* devbase-image-bytesatwork: This image contains several essential
  developer tools, such as editors (vim, nano) and debuggers (gdb,
  valgrind).


Reporting bugs
-------------------------
Send pull requests, patches, comments or questions to yocto@bytesatwork.ch
