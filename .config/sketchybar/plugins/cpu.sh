#!/usr/bin/env sh
# f2db = microchip
CPU_ICON=$(printf '\xef\x8b\x9b')
TOPPROC=$(top -l 2 | grep -E "^CPU" | tail -1 | awk '{ print $3 + $5"%" }' | cut -d "." -f1)
sketchybar --set $NAME icon="$CPU_ICON" label="${TOPPROC}%"
