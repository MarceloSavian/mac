# f179 = apple logo (FA Brands)
APPLE_ICON=$(printf '\xef\x85\xb9')
sketchybar --add item apple_menu left \
           --set apple_menu icon="$APPLE_ICON" \
                            icon.font="Font Awesome 7 Brands:Regular:16.0" \
                            icon.color=0xff9fd06a \
                            icon.padding_left=13 \
                            icon.padding_right=8 \
                            label.drawing=off

sketchybar --add item separator left \
           --set separator background.image="$HOME/.config/sketchybar/assets/seperator.png" \
                           background.image.scale=0.09 \
                           background.drawing=on \
                           background.padding_left=12 \
                           background.padding_right=3 \
                           label.drawing=off \
                           icon.drawing=off
