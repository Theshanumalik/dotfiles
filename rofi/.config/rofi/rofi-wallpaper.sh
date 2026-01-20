#!/usr/bin/env bash

WALLDIR="$HOME/Pictures/wallpapers"
SETTER="$HOME/.config/hypr/scripts/setwall.sh"

WALL=$(PREVIEW=true rofi -no-config \
  -theme fullscreen-preview.rasi \
  -show filebrowser \
  -filebrowser-directory "$WALLDIR" \
  -filebrowser-sorting-method mtime \
  -p "" \
  -filebrowser-command echo {file} \
  )

[ -z "$WALL" ] && exit 0

exec "$SETTER" "$WALL"
