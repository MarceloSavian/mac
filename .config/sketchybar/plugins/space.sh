#!/usr/bin/env sh

SID="${NAME##space.}"
FOCUSED=$(aerospace list-workspaces --focused 2>/dev/null)

if [ "$FOCUSED" = "$SID" ]; then
  sketchybar --set "$NAME" \
             label.color=0xffe0af68 \
             background.color=0xff383050 \
             background.border_color=0xff583794 \
             background.border_width=1
else
  WIN_COUNT=$(aerospace list-windows --workspace "$SID" 2>/dev/null | wc -l | tr -d ' ')
  if [ "$WIN_COUNT" -gt "0" ]; then
    sketchybar --set "$NAME" \
               label.color=0xff9aa5ce \
               background.color=0xff2e2a40 \
               background.border_color=0x00000000 \
               background.border_width=0
  else
    sketchybar --set "$NAME" \
               label.color=0xff583794 \
               background.color=0xff252630 \
               background.border_color=0x00000000 \
               background.border_width=0
  fi
fi
