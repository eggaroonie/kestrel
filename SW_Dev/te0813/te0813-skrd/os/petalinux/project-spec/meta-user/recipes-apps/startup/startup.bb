SUMMARY = "Simple startup application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"


SRC_URI = "file://startup.sh \
           file://root_profile"

S = "${WORKDIR}"

FILES:${PN} += "${base_bindir}/startup.sh  ${ROOT_HOME}/.profile"

do_compile() {
  :
}

do_install() {
        install -d ${D}${base_bindir}
        install -m 0755 ${S}/startup.sh ${D}${base_bindir}/startup.sh
        
        install -d ${D}${ROOT_HOME}
        install -m 0644 ${S}/root_profile ${D}${ROOT_HOME}/.profile
}
