# Binary files for configuring the MDG-217 camera assembly

Redistributed with GEO Semiconductor, Inc. permission (2019-04-11).

Intended to be used together with the (optional) [UVC kernel patch](https://github.com/digitalloggers/geocam-uvc) and the [userspace V4L2 plugin](https://github.com/digitalloggers/geocam-v4l2).

Install files to locations of your convenience, and add a line similar to this:

    ATTR{idVendor} =="29fe", ATTR{idProduct} =="b00c", MODE="0660", OWNER="root", GROUP="video", RUN+="/path/to/mxcam boot /path/to/gc6500_ddrboot_fw.img /path/to/config.json /path/to/sensor_ov2710_mayfield_le.bin"

to your udev rules to make the camera boot as soon as it's found (or run the above mxcam command manually as needed).
