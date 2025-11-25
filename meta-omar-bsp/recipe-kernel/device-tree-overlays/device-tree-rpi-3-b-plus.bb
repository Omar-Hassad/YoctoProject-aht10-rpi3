SUMMARY = "Device tree overlays for rpi 3 b plus"
LICENSE = "CLOSED"

SRC_URI = "file://my-overlay.dts"

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

inherit devicetree

COMPATIBLE_MACHINE = "raspberrypi3"

S = "${WORKDIR}"

do_install() {
    # Exemple : installer les .dtbo dans /boot/overlays (adapter selon plateforme)
    install -d ${D}/boot/overlays
    for f in ${WORKDIR}/*.dtbo; do
        install -m 0644 $$f ${D}/boot/overlays/
    done
}
