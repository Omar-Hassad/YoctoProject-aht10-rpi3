# Override U-Boot pour Raspberry Pi 3

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://rpi_3_defconfig"

