. "$PLUGIN_DIR/spotify.sh"

# Material Icons codepoints (UTF-8 hex):
# U+E045 skip_previous, U+E034 pause, U+E037 play_arrow, U+E044 skip_next
ICON_BACK=$(printf '\xee\x81\x85')
ICON_PAUSE=$(printf '\xee\x80\xb4')
ICON_FORWARD=$(printf '\xee\x81\x84')

sketchybar --add item back left \
           --set back icon="$ICON_BACK" \
                      icon.font="Material Icons:Regular:20.0" \
                      icon.color=0xff7aa2f7 \
                      icon.padding_left=10 \
                      icon.padding_right=25 \
                      background.drawing=on \
                      background.color=0xff252731 \
                      background.height=30 \
                      background.corner_radius=20 \
                      click_script="$BACK_SCRIPT" \
           --subscribe back mouse.clicked

sketchybar --add item pause left \
           --set pause icon="$ICON_PAUSE" \
                       icon.font="Material Icons:Regular:18.0" \
                       icon.color=0xffbfc945 \
                       icon.padding_right=20 \
                       background.padding_left=-25 \
                       background.drawing=on \
                       background.color=0xff252731 \
                       background.height=30 \
                       background.corner_radius=20 \
                       click_script="$PAUSE_PLAY_SCRIPT" \
                       script="$PLUGIN_DIR/spotify.sh" \
                       update_freq=2

sketchybar --add item forward left \
           --set forward icon="$ICON_FORWARD" \
                         icon.font="Material Icons:Regular:20.0" \
                         icon.color=0xff7aa2f7 \
                         icon.padding_left=5 \
                         icon.padding_right=10 \
                         background.padding_left=-23 \
                         background.drawing=on \
                         background.color=0xff252731 \
                         background.height=30 \
                         background.corner_radius=20 \
                         click_script="$FORWARD_SCRIPT"
