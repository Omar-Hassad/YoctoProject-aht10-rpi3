SUMMARY = "U-Boot bootloader for Raspberry Pi 3 B+"
LICENSE = "GPL-2.0-only"
LIC_FILES_CHKSUM = "file://LICENSE;md5=<checksum>"

SRC_URI = "git://github.com/u-boot/u-boot.git;branch=master"
SRCREV = "2bc0715b558fa1ac5c88b11e250740b16a905837"

S = "${WORKDIR}/git"

do_compile() {
    oe_runmake rpi_3_defconfig
    oe_runmake
}

do_install() {
    install -d ${D}/boot
    install -m 0644 u-boot.bin ${D}/boot/
}
