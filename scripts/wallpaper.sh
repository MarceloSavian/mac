#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers"

images=("$WALLPAPER_DIR"/*.{png,jpg,jpeg,webp})
count=${#images[@]}

if [ "$count" -eq 0 ]; then
  exit 1
fi

random=$((RANDOM % count))
image="${images[$random]}"

osascript -e "tell application \"System Events\" to tell every desktop to set picture to \"$image\""

python3 - "$image" << 'PYTHON'
import sys, os, plistlib, subprocess
from datetime import datetime, timezone

image_path = sys.argv[1]
index_path = os.path.expanduser(
    "~/Library/Application Support/com.apple.wallpaper/Store/Index.plist"
)

config = plistlib.dumps(
    {"type": "imageFile", "url": {"relative": f"file://{image_path}"}},
    fmt=plistlib.FMT_BINARY,
)

def make_choice(config_bytes):
    return {
        "Configuration": config_bytes,
        "Files": [],
        "Provider": "com.apple.wallpaper.choice.image",
    }

with open(index_path, "rb") as f:
    index = plistlib.load(f)

now = datetime.now(timezone.utc).replace(tzinfo=None)

asd = index.get("AllSpacesAndDisplays", {})
if "Idle" in asd:
    asd["Idle"]["Content"]["Choices"] = [make_choice(config)]
    asd["Idle"]["LastSet"] = now

for display in index.get("Displays", {}).values():
    if "Idle" in display:
        display["Idle"]["Content"]["Choices"] = [make_choice(config)]
        display["Idle"]["LastSet"] = now

with open(index_path, "wb") as f:
    plistlib.dump(index, f, fmt=plistlib.FMT_BINARY)

subprocess.run(["killall", "WallpaperAgent"], capture_output=True)
PYTHON
