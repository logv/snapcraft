## Snorkel Universal Packages

This repository contains build scripts for building the snorkel snapcraft
package (supported on ubuntu distributions). There is also a script to convert
the snapcraft package into an AppImage package, using the AppImageKit tools


### Building

    # run snapcraft binary to build the snapcraft package
    # this command generates a package with .snap extension
    snapcraft

    # download appimagekit binary, then run to convert the
    # snap to an AppImage (testing still required, though!)
    bash appimage/make_appimage.sh snorkel.x.snap

