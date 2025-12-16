FILESEXTRAPATHS:prepend := "${THISDIR}/fragments:"

SRC_URI += "file://fragment.cfg"

KERNEL_CONFIG_FRAGMENTS += "fragment.cfg"
