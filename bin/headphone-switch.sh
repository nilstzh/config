#!/bin/sh
ANALOG="alsa_output.pci-0000_0f_00.4.analog-stereo"
HDMI="alsa_output.pci-0000_0d_00.1.hdmi-stereo-extra1"

if [ "$1" = "plugged" ]; then
    wpctl set-default $(pw-cli info "$ANALOG" | head -n1 | awk '{print $2}')
else
    wpctl set-default $(pw-cli info "$HDMI" | head -n1 | awk '{print $2}')
fi
