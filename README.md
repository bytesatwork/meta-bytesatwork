meta-bytesatwork
================================


Introduction
-------------------------
This is the official OpenEmbedded/Yocto BSP layer for bytePANEL and byteBOARD
by bytes at work AG.

It is hosted on https://github.com/bytesatwork/meta-bytesatwork.git

This layer depends on:

	URI: git://git.yoctoproject.org/meta-ti
	layer: meta-ti
	branch: master
	commit: 78326e7baa308945d62a0293758df6542a875d8b

	URI: git://git.openembedded.org/meta-openembedded
	layers: meta-oe, meta-networking, meta-python
	branch: rocko


BSP
-------------------------
This meta layer provides the Board Support Package (U-Boot and Linux kernel)
for "bytePANEL" and "byteBOARD" by bytes at work AG. Simply set the variable
MACHINE to either "bytepanel", "bytepanel-emmc", or "byteboard" to use this
BSP.

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
