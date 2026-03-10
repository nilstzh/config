#!/bin/sh
ANALOG="alsa_output.pci-0000_0f_00.4.analog-stereo"
HDMI="alsa_output.pci-0000_0d_00.1.hdmi-stereo-extra1"
CARD="alsa_card.pci-0000_0f_00.4"
PROFILE="output:analog-stereo+input:analog-stereo"

pactl set-card-profile "$CARD" "$PROFILE"

if [ "$1" = "plugged" ]; then
    pactl set-default-sink "$ANALOG"
else
    pactl set-default-sink "$HDMI"
fi
