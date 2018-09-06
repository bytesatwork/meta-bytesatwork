MLO_IMAGE ??= "${SPL_BINARY}"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-2018.01:"
SRC_URI += " \
	file://0001-arm-dts-am33xx-Add-missing-phy-cells-to-ti-am335x-us.patch \
	file://0002-sf-ids-Add-support-for-M25PE40-and-W25Q128JV.patch \
	file://0003-byteengine_m2-Add-support-byteENGINE-AM335x.patch \
	file://0004-cmd-cpuinfo-Add-a-basic-command-for-showing-cpu-info.patch \
"

do_deploy_append_bytepanel-emmc () {
	install -d ${DEPLOY_DIR_IMAGE}
	install ${B}/${SPL_BINARY}.byteswap ${DEPLOY_DIR_IMAGE}/${MLO_IMAGE}.byteswap
}
