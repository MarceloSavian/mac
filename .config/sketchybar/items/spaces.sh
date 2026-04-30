#!/usr/bin/env sh

WORKSPACES="1 2 3 4 5 6 7 8 9"
first=1

for ws in $WORKSPACES; do
  sketchybar --add item "space.$ws" left \
             --set "space.$ws" \
                   label="$ws" \
                   label.font="$FONT:Bold:12.0" \
                   label.color=0xff583794 \
                   label.padding_left=8 \
                   label.padding_right=8 \
                   icon.drawing=off \
                   background.drawing=on \
                   background.color=0xff252630 \
                   background.corner_radius=6 \
                   background.height=26 \
                   background.padding_left=3 \
                   background.padding_right=3 \
                   click_script="aerospace workspace $ws" \
                   script="$PLUGIN_DIR/space.sh" \
             --subscribe "space.$ws" aerospace_workspace_change mouse.clicked
done

sketchybar --add bracket spaces '/space\..*/' \
           --set spaces \
                 background.color=0xff1a1c26 \
                 background.corner_radius=10 \
                 background.height=33 \
                 background.padding_left=4 \
                 background.padding_right=4
