SUMMARY = "Image OMAR"
LICENSE = "MIT"

inherit core-image
inherit wic-img

# Fichier WIC pour créer l'image SD dual-rootfs A/B 
# avec boot et rootfs pour Raspberry Pi
WKS_FILE = "image.wks"

IMAGE_INSTALL = "\
    packagegroup-core-boot \
    packagegroup-core-ssh-openssh \
    packagegroup-self-hosted \
    kernel-dev \ 
    kernel-devsrc \
    connman \
    connman-plugin-ethernet \
    dhcpcd \
    tzdata \
    python3-pip \
    perl-misc \
    u-boot \
    openssh \
"

IMAGE_FSTYPES = "\
    wic.vmdk \
    wic.vhd \
    wic.vhdx \
    tar.bz2 \
    ext4 \
    wic.gz \
    wic.bmap \
"
 
SDIMG_ROOTFS_TYPE = "ext4"

# Retirer le kernel du rootfs
RDEPENDS_${KERNEL_PACKAGE_NAME}-base_remove = "kernel-image"