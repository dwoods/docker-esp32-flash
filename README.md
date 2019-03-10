ESP32 Dockerized Flash Utility
==============================

Usage:

Given a zip archive that contains the following files:

* app-firmware.bin
* bootloader.bin
* partitions_singleapp.bin

```bash
docker run --name flash --rm -ti --device /dev/ttyUSB0:/dev/ttyUSB0 -v ${DIR_WITH_FIRMWARE_ZIP}:/data dwoods/esp32-flash firmware.zip
```