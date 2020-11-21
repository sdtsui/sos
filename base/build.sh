#!/bin/bash

# Get the 64 bit rpi rootfs for Pi 3 and 4
wget -N --progress=bar:force:noscroll http://os.archlinuxarm.org/os/ArchLinuxARM-rpi-aarch64-latest.tar.gz

# Build the base image
docker buildx build --tag faddat/sos-base --platform linux/arm64 --push --cache-from faddat/sos-base --cache-to faddat/sos-base --progress plain .
