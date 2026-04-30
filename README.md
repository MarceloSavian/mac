# dotfiles-mac

My macOS configuration files.

## Setup

### Dependencies

```bash
brew install --cask aerospace
brew install FelixKratz/formulae/sketchybar
brew install --cask font-monocraft font-hack-nerd-font font-fontawesome font-material-icons
brew install --cask scroll-reverser
brew install jq switchaudio-osx
```

Download [Pacman-Dots.ttf](https://github.com/itaysharir/Dotfiles/raw/main/misc/fonts/Pacman-Dots.ttf) to `~/Library/Fonts/`.

### Installation

```bash
# Clone the repo
git clone https://github.com/MarceloSavian/mac.git ~/mac

# Symlink configs
ln -sf ~/mac/.aerospace.toml ~/.aerospace.toml
ln -sf ~/mac/.zshrc ~/.zshrc
ln -sf ~/mac/.zprofile ~/.zprofile
ln -sf ~/mac/.gitconfig ~/.gitconfig
ln -sf ~/mac/.config/sketchybar ~/.config/sketchybar

# Restore Scroll Reverser preferences
cp ~/mac/Library/Preferences/com.pilotmoon.scroll-reverser.plist ~/Library/Preferences/

# Start services
brew services start sketchybar
```

> After restoring the Scroll Reverser plist, open Scroll Reverser from Applications and enable it from the menu bar.

## What's included

| File | Description |
|------|-------------|
| `.aerospace.toml` | AeroSpace tiling window manager |
| `.config/sketchybar/` | SketchyBar status bar (Pacman theme) |
| `Library/Preferences/com.pilotmoon.scroll-reverser.plist` | Scroll Reverser (reverse mouse, keep trackpad natural) |
| `.zshrc` | ZSH shell config |
| `.zprofile` | ZSH profile (PATH setup) |
| `.gitconfig` | Git config |

## Bar layout

- **Left**: workspaces (1–9) · Apple menu · Spotify controls
- **Right**: now playing · battery · volume · updates · clock · CPU · RAM · disk

## Window manager

- `Alt+1–9` — switch workspace
- `Alt+Shift+1–9` — move window to workspace (focus follows)
- `Alt+H/J/K/L` — focus window
- `Alt+Shift+H/J/K/L` — move window
- `Alt+D` — open Raycast
- `Alt+Q` — quit focused app
- `Alt+Return` — open new iTerm2 window
- `Alt+Shift+R` — reload config
