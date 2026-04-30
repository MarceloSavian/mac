#!/usr/bin/env sh

status() {
  osascript -e 'tell application "Spotify"
    set playerState to player state as string
  end tell
  playerState' 2>/dev/null | grep -q 'playing' && echo "playing" || echo "paused"
}

BACK_SCRIPT="cd ~/.config/sketchybar/spotify && ./back.sh"
PAUSE_PLAY_SCRIPT="cd ~/.config/sketchybar/spotify/ && ./playpause.sh && source '$PLUGIN_DIR/spotify.sh'"
FORWARD_SCRIPT="cd ~/.config/sketchybar/spotify && ./forward.sh"

# U+E034 = pause, U+E037 = play_arrow
ICON_PAUSE=$(printf '\xee\x80\xb4')
ICON_PLAY=$(printf '\xee\x80\xb7')

if [ "$(status)" = "playing" ]; then
  sketchybar --set pause icon="$ICON_PAUSE"
else
  sketchybar --set pause icon="$ICON_PLAY"
fi
