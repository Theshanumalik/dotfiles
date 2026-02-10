#!/bin/bash

wall_dir="$HOME/Pictures/wallpapers"
change_wallpaper_script="$HOME/scripts/set-wal.sh"
theme="$HOME/.config/rofi/themes/wallpapers.rasi"

selected=$(ls "$wall_dir"/* | while read imageFile; do
    echo -en "$imageFile\0icon\x1f$imageFile\n"
  done | rofi -dmenu -filter -theme "$theme" -p " Wallpapers")


[ -z "$selected" ] && exit 0

exec "$change_wallpaper_script" "$selected"

 echo "$wall_dir/$selected"
