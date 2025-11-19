FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://rpi_3_b_plus_defconfig"

#UBOOT_DEFCONFIG = "rpi_3_b_plus_defconfig"

do_install:append() {
    if [ -f "${B}/u-boot.img" ]; then
        install -d ${D}${DEPLOYDIR}
        install -m 0644 ${B}/u-boot.img ${D}${DEPLOYDIR}/u-boot.img
    fi
}
