#!/bin/bash
brctl delif br0 tap0
tunctl -d tap0
brctl delif br0 enp4s0
ip link set dev br0 down
brctl delbr br0
ip link set dev enp4s0 up
dhclient -v enp4s0
