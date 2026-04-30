# f1bc = Spotify logo (FA Brands)
SPOTIFY_ICON=$(printf '\xef\x86\xbc')

sketchybar --add item playing left \
           --set playing update_freq=5 \
                         icon="$SPOTIFY_ICON" \
                         icon.font="Font Awesome 7 Brands:Regular:13.0" \
                         icon.color=0xff1db954 \
                         icon.padding_left=12 \
                         icon.padding_right=6 \
                         label.font="$FONT:Medium:12.0" \
                         label.color=0xffdfe1ea \
                         label.padding_right=12 \
                         background.drawing=on \
                         background.color=0xff252731 \
                         background.height=30 \
                         background.corner_radius=20 \
                         background.padding_left=3 \
                         background.padding_right=3 \
                         script="$PLUGIN_DIR/playing.sh"
