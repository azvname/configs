#!/bin/bash

QEMU=/usr/bin/qemu-system-x86_64

disk_name=$1
iso=$2


${QEMU} \
 -cdrom $iso \
 -drive file=$disk_name,format=qcow2 \
 -usbdevice tablet \
 -m 4096 \
 -vga std \
 -enable-kvm \
 -boot menu=on \
 -drive if=pflash,format=raw,file=/usr/share/ovmf/OVMF.fd,readonly=off \
 -net user,smb=/absolute/path/to/folder \
 -net nic,model=virtio \
