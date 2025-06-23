#!/usr/bin/env bash

VOLUME=$(pactl --format=json get-sink-volume @DEFAULT_SINK@ |
    head -n 1 |
    tail -n 2 |
    sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')

dunstify -a "changevolume" -u low -r 9993 -h string:x-volume "Volume: $VOLUME%" -h int:value:$VOLUME
