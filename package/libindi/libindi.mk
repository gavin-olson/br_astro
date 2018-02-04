################################################################################
#
# libindi
#
################################################################################

LIBINDI_VERSION = v1.6.2
LIBINDI_SOURCE = libindi_$(subst v,,$(LIBINDI_VERSION)).tar.gz
LIBINDI_SITE = https://github.com/indilib/indi/releases/download/$(LIBINDI_VERSION)
LIBINDI_LICENSE = LGPL-2.1
LIBINDI_LICENSE_FILES = LICENSE
LIBINDI_INSTALL_STAGING = YES
LIBINDI_INSTALL_TARGET = YES
LIBINDI_DEPENDENCIES = libnova cfitsio libusb zlib gsl jpeg libcurl

$(eval $(cmake-package))

