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

if [ "$(status)" = "playing" ]; then
  sketchybar --set pause icon=""
else
  sketchybar --set pause icon=""
fi
