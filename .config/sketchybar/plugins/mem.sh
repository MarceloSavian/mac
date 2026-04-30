#!/usr/bin/env bash
# f538 = memory
MEM_ICON=$(printf '\xef\x94\xb8')
getPercentage=$(top -l 2 | grep -E "^CPU" | tail -1 | grep -Eo '[^[:space:]]+%' | head -1 | cut -d "." -f1 | tr -d '%')
sketchybar --set $NAME icon="$MEM_ICON" label="${getPercentage}%"
