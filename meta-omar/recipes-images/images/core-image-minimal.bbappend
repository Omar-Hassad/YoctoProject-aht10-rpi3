SUMMARY = "Image OMAR"
LICENSE = "MIT"

inherit core-image

# Fichier WIC pour créer l'image SD dual-rootfs A/B 
# avec boot et rootfs pour Raspberry Pi
WKS_FILE = "image.wks"

# empêche WIC de modifier /etc/fstab pour RAUC A/B
WIC_CREATE_EXTRA_ARGS = "--no-fstab-update"

IMAGE_INSTALL = " \
    packagegroup-core-boot \
    rauc \
"

IMAGE_FSTYPES = " \
    wic \
    wic.bmap \
"  

 
SDIMG_ROOTFS_TYPE = "ext4"

# Retirer le kernel du rootfs
#RDEPENDS_${KERNEL_PACKAGE_NAME}-base_remove = "kernel-image"