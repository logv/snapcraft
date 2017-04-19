APPIMAGETOOL="./appimagetool-x86_64.AppImage"
SNORKEL_SNAP="$1"
BUILD_DIR="appimage.build"
SNAP_EXTRACT_DIR="snap.extract"

rm ${BUILD_DIR} -fr
mkdir ${BUILD_DIR}

pushd appimage
cp snorkel.png snorkel.desktop AppRun ../${BUILD_DIR}
popd

rm ${SNAP_EXTRACT_DIR} -fr
unsquashfs -d ${SNAP_EXTRACT_DIR} ${SNORKEL_SNAP}
mv ${SNAP_EXTRACT_DIR}/* ${BUILD_DIR}

${APPIMAGETOOL} ${BUILD_DIR}


