#!/bin/bash

QEMU="/usr/bin/qemu-system-x86_64"

name_disk=$1
name_iso=$2

${QEMU} \
-name "test2" \
-enable-kvm \
-m 4096 \
-machine q35,accel=kvm \
-drive file=$name_disk,index=1,media=disk,if=virtio,cache=writeback \
-drive file=$name_iso,index=2,media=cdrom \
-device VGA,vgamem_mb=128 \
-vga std \
-net nic -net user \
-smp 4,sockets=1,cores=4,threads=1 \
-usbdevice tablet \
-drive if=pflash,format=raw,file=/usr/share/ovmf/OVMF.fd,readonly=off

#-vga cirrus \
#-cpu host \;
#-display gtk \
#-drive if=pflash,format=raw,readonly=on,file=OVMF.fd \
#-drive if=pflash,format=raw,file=OVMF_VARS.fd \
#-hda $name_disk \
#-cdrom $name_iso \
