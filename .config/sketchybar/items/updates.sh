UPDATES_ICON=$(printf '')

sketchybar --add item updates right \
           --set updates update_freq=3600 \
                         icon="$UPDATES_ICON" \
                         icon.font="Font Awesome 7 Free Solid:Regular:15.4" \
                         icon.color=0xffb9c244 \
                         label.font="$FONT:Medium:12.0" \
                         label.color=0xffdfe1ea \
                         background.color=0xff252731 \
                         background.height=33 \
                         background.corner_radius=20 \
                         script="$PLUGIN_DIR/package_monitor.sh" \
                         icon.padding_left=16 label.padding_right=16
