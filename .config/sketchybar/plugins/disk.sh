#!/usr/bin/env sh
# f0a0 = hdd
DISK_ICON=$(printf '\xef\x82\xa0')
a=$(df -h "/" | awk 'NR==2{print $4}' | cut -c 1-4)
FINAL=$(printf '%s\n' "${a%?} ${a#"${a%?}"}")
sketchybar --set $NAME icon="$DISK_ICON" label="${FINAL}B"
