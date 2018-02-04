################################################################################
#
# kstars
#
################################################################################

KSTARS_VERSION = 2.9.2
KSTARS_SOURCE = kstars-$(KSTARS_VERSION).tar.xz
KSTARS_SITE = http://download.kde.org/stable/kstars
KSTARS_LICENSE = CC-BY-SA-4.0
KSTARS_LICENSE_FILES = LICENSE_OpenNGC
KSTARS_INSTALL_STAGING = NO
KSTARS_INSTALL_TARGET = YES
KSTARS_DEPENDENCIES = eigen cfitsio

$(eval $(cmake-package))

