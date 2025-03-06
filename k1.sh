#!/bin/bash

QEMU=/usr/bin/qemu-system-x86_64



#-machine q35,accel=kvm \
name_os=$1

${QEMU} \
-smp 4,sockets=1,cores=4,threads=1 \
-device VGA,vgamem_mb=128 \
-usbdevice tablet \
-m 2048 \
-vga std \
-enable-kvm \
-drive if=pflash,format=raw,file=/usr/share/ovmf/OVMF.fd,readonly=on \
-boot c \
-hda $name_os \

