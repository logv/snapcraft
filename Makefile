default: appimage snap

snap: 
	snapcraft


appimage: snap
	bash appimage/make_appimage.sh

.PHONY:snap
.PHONY:appimage
