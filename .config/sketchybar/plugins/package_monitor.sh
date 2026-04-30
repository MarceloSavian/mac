#!/usr/bin/env sh
OUTDATED=$(brew outdated | grep -c .)
sketchybar --set $NAME label="$OUTDATED"
