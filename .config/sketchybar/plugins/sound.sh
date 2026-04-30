#!/usr/bin/env bash

# Font Awesome: f028=volume-high f027=low f026=off f6a9=muted
VHIGH=$(printf '\xef\x80\xa8')
VLOW=$(printf '\xef\x80\xa7')
VOFF=$(printf '\xef\x80\xa6')
VMUTE=$(printf '\xef\x9a\xa9')

VOLUME=$(osascript -e "output volume of (get volume settings)")
MUTED=$(osascript -e "output muted of (get volume settings)")

if [ "$MUTED" != "false" ]; then
  ICON="$VMUTE"
else
  case ${VOLUME} in
    100)    ICON="$VHIGH" ;;
    9[0-9]) ICON="$VHIGH" ;;
    8[0-9]) ICON="$VHIGH" ;;
    7[0-9]) ICON="$VHIGH" ;;
    6[0-9]) ICON="$VHIGH" ;;
    5[0-9]) ICON="$VLOW"  ;;
    4[0-9]) ICON="$VLOW"  ;;
    3[0-9]) ICON="$VLOW"  ;;
    2[0-9]) ICON="$VOFF"  ;;
    1[0-9]) ICON="$VOFF"  ;;
    [0-9])  ICON="$VMUTE" ;;
    *)      ICON="$VHIGH" ;;
  esac
fi

sketchybar -m --set $NAME icon="$ICON" label="$VOLUME"
