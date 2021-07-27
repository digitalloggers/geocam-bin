#!/bin/sh
if [ "`id -u`" != 0 ]; then
    echo 'This script needs additional privileges; please review it, adjust if necessary and run as root.'
    exit 1
fi
PREFIX=/usr/local
cp mxcam ${PREFIX}/bin/mxcam
mkdir -p ${PREFIX}/share/geocam/
cp gc6500_ddrboot_fw.img config.json sensor_ov2710_mayfield_le.bin ${PREFIX}/share/geocam/
echo 'ATTR{idVendor} =="29fe", ATTR{idProduct} =="b00c", MODE="0660", OWNER="root", GROUP="video", RUN+="'"${PREFIX}"'/bin/mxcam boot '"${PREFIX}"'/share/geocam/gc6500_ddrboot_fw.img '"${PREFIX}"'/share/geocam/config.json '"${PREFIX}"'/share/geocam/sensor_ov2710_mayfield_le.bin"' > /etc/udev/rules.d/500-geocam.rules
udevadm trigger
