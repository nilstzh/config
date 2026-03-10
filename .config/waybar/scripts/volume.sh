#!/bin/sh
VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}')
DEFAULT=$(pactl get-default-sink)

if [ "$DEFAULT" = "alsa_output.pci-0000_0f_00.4.analog-stereo" ]; then
    ICON=""
else
    ICON=""
fi

echo "$ICON $VOLUME%"
