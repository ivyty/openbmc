KBRANCH = "Poleg-4.19.16-OpenBMC"
LINUX_VERSION = "4.19.16"

KSRC = "git://github.com/Nuvoton-Israel/linux;protocol=git;branch=${KBRANCH}"
SRCREV = "8f03aa3e0afb27d2dd00bd4536442f2155eea987"

FILESEXTRAPATHS_prepend := "${THISDIR}/linux-nuvoton:"

SRC_URI += "file://runbmc-nuvoton.cfg"
SRC_URI += "file://0001-Revert-mtd-spi-nor-fix-options-for-mx66l51235f.patch"
SRC_URI += "file://0001-add-tps53622-and-tps53659.patch"
SRC_URI += "file://runbmc-nuvoton-enable-slave-mqueue.cfg"
