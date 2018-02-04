################################################################################
#
# cfitsio
#
################################################################################

CFITSIO_VERSION = 3.420
CFITSIO_SOURCE = cfitsio$(subst .,,$(CFITSIO_VERSION)).tar.gz
CFITSIO_SITE = http://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c
CFITSIO_INSTALL_STAGING = YES
CFITSIO_INSTALL_TARGET = YES
CFITSIO_DEPENDENCIES = libcurl

define CFITSIO_EXTRACT_CMDS
	tar --strip-components=1 -C $(@D) -xf $(DL_DIR)/$(CFITSIO_SOURCE)
endef

ifeq ($(BR2_PACKAGE_CFITSIO_SHARED),y)
CFITSIO_MAKE_OPTS = shared
else
CFITSIO_MAKE_OPTS = stand_alone
endif

ifeq ($(BR2_PACKAGE_CFITSIO_UTILS),y)
CFITSIO_MAKE_OPTS += utils
endif

$(eval $(autotools-package))

