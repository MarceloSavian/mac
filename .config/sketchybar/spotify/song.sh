#!/usr/bin/env sh
osascript -e 'tell application "System Events"
  set processList to (name of every process)
end tell
if (processList contains "Spotify") is true then
  tell application "Spotify"
    return name of current track
  end tell
end if'
