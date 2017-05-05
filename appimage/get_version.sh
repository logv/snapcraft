cat snap/snapcraft.yaml | grep version | awk '{ print $2 }' | sed "s/'//g"
