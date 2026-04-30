#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers"

images=("$WALLPAPER_DIR"/*.{png,jpg,jpeg,webp})
count=${#images[@]}

if [ "$count" -eq 0 ]; then
  exit 1
fi

random=$((RANDOM % count))
image="${images[$random]}"

osascript -e "tell application \"System Events\" to tell every desktop to set picture to \"$image\""
