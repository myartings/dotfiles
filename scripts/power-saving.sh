#!/bin/bash
########################################################
# file: power-saving.sh
# author: serdotlinecho
# vim: set ft=sh:
########################################################

# screen brightnesss
setpci -s 00:02.0 F4.B=70

# turn off bluetooth
rfkill block bluetooth

# enable audio HD powersave
echo 1 > /sys/module/snd_hda_intel/parameters/power_save

# enable SATA link power Managmenet
for i in $(ls /sys/class/scsi_host/*/link_power_management_policy);do echo min_power > $i;done

# autosuspend for USB device and runtime PM for PCI Device
for i in $(ls /sys/bus/usb/devices/*/power/level);do echo auto > $i;done

exit
