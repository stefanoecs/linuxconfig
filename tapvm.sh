#!/bin/bash
qemu-system-x86_64 -m 1024 -boot d -enable-kvm -smp 2 -net nic -net tap -hda $1 
