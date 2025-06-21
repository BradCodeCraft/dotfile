#!/usr/bin/env bash

CURRENT=$(brightnessctl g)
MAX=$(brightnessctl m)
BRIGHTNESS_LEVEL=$(expr $(expr $(expr $CURRENT \* 100) + $(expr $MAX - 1)) / $MAX)

dunstify -h string:x-brightness "Brightness[$BRIGHTNESS_LEVEL%]" -h int:value:$BRIGHTNESS_LEVEL
