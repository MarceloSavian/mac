#!/usr/bin/env sh

# Font Awesome codepoints via UTF-8 hex:
# f240=battery-full f241=3/4 f242=half f243=1/4 f244=empty f0e7=bolt
BFULL=$(printf '\xef\x89\x80')
B75=$(printf '\xef\x89\x81')
BHALF=$(printf '\xef\x89\x82')
B25=$(printf '\xef\x89\x83')
BEMPTY=$(printf '\xef\x89\x84')
BOLT=$(printf '\xef\x83\xa7')

BATT_PERCENT=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep "AC Power")

if [ "$CHARGING" != "" ]; then
  sketchybar -m --set battery icon="$BOLT" label="${BATT_PERCENT}"
  exit 0
fi

case ${BATT_PERCENT} in
  100)    ICON="$BFULL";  COLOR="0xff9ac868" ;;
  9[0-9]) ICON="$BFULL";  COLOR="0xff9ac868" ;;
  8[0-9]) ICON="$B75";    COLOR="0xff9ac868" ;;
  7[0-9]) ICON="$B75";    COLOR="0xfffbc62d" ;;
  6[0-9]) ICON="$BHALF";  COLOR="0xfffbc62d" ;;
  5[0-9]) ICON="$BHALF";  COLOR="0xfffbc62d" ;;
  4[0-9]) ICON="$BHALF";  COLOR="0xfffbc62d" ;;
  3[0-9]) ICON="$B25";    COLOR="0xfffbc62d" ;;
  2[0-9]) ICON="$B25";    COLOR="0xfffbc62d" ;;
  1[0-9]) ICON="$BEMPTY"; COLOR="0xfff65e51" ;;
  *)      ICON="$BEMPTY"; COLOR="0xfff65e51" ;;
esac

sketchybar -m --set battery icon="$ICON" label="${BATT_PERCENT}" label.color="$COLOR"
