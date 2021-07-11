#!/bin/bash

brctl addbr br0
ip addr flush dev enp4s0
brctl addif br0 enp4s0
tunctl -t tap0 -u `whoami`
brctl addif br0 tap0
ip link set dev br0 up
ip link set dev enp4s0 up
ip link set dev tap0 up
dhclient -v br0
