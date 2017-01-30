#!/bin/bash
BG=/tmp/screen.png
scrot $BG

convert $BG -scale 1% -filter Box -resize $(xrandr -q | head -1 | cut -d"," -f2 | cut -d" " -f3-5 | tr -d " ")! $BG
i3lock -u -i $BG
