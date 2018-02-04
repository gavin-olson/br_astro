# br_astro
A collection of astronomy-related packages for the Buildroot embedded Linux framework

## Packages
The following packages are included:
* cfitsio: The NASA library for manipulating FITS (Flexible Image Transport System) image files. This is a popular format in astrophotography because it supports arbitrary metadata and unusual pixel layouts/depths
* libnova: A library for doing astronomy-related math.
* libindi: A library and tools for interfacing with the INDI (Instrument Neutral Distributed Interface) framework. This is a popular middleware between astrophotography equipment and software. 
* libindi_3rdparty: Additional drivers for libindi. For a variety of reasons, some drivers are distributed separately from the main libindi package. Because they each have their own special build requirements, only a subset is currently supported by the package definition:
    * indi-asi: ZWO ASI cameras and filter wheels
    * indi-eqmod: EQMod-compatible mounts (Orion EQ-G, Skywatcher)
    * indi-ssag: The Orion Starshoot Autoguider camera
* kstars: A Qt-based planetarium application. Includes Ekos, a comprehensive observatory control module.

## Using
These packages are set up to be used through the "external" framework. When you run menuconfig, include the path in the BR2_EXTERNAL make variable:

    make BR2_EXTERNAL=/path/to/br_astro menuconfig
 
If you're already using an external to organize your project, do not fear. As of Buildroot 2016.11, you can have multiple externals; simply separate with a colon.
