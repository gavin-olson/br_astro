################################################################################
#
# libnova
#
################################################################################

LIBNOVA_VERSION = v0.16
LIBNOVA_SITE = https://git.code.sf.net/p/libnova/libnova
LIBNOVA_SITE_METHOD = git
LIBNOVA_AUTORECONF = YES
LIBNOVA_INSTALL_STAGING = YES
LIBNOVA_INSTALL_TARGET = YES

$(eval $(autotools-package))

