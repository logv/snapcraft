APPIMAGETOOL="./appimagetool-x86_64.AppImage"
BUILD_DIR="appimage.build"
SNAP_EXTRACT_DIR="snap.extract"

VERSION=`bash appimage/get_version.sh`
SNORKEL_SNAP="./snorkel_${VERSION}_amd64.snap"

rm ${BUILD_DIR} -fr
mkdir ${BUILD_DIR}

pushd appimage
cp snorkel.png snorkel.desktop AppRun ../${BUILD_DIR}
popd

rm ${SNAP_EXTRACT_DIR} -fr
unsquashfs -d ${SNAP_EXTRACT_DIR} ${SNORKEL_SNAP}
mv ${SNAP_EXTRACT_DIR}/* ${BUILD_DIR}

${APPIMAGETOOL} ${BUILD_DIR}

mv ./Snorkel-x86_64.AppImage Snorkel-${VERSION}-x86_64.AppImage

