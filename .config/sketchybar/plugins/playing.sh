#!/usr/bin/env sh
PLAYING=$(cd ~/.config/sketchybar/spotify && ./song.sh)
FINAL=$(echo $PLAYING | sed 's/\(.\{20\}\).*/\1.../')
sketchybar --set $NAME label="$FINAL"
