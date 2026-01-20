theme="$HOME/.config/rofi/themes/power-menu.rasi"
confirm_theme="$HOME/.config/rofi/themes/confirm.rasi"
options=" Lock
󰍃 Logout
󰤄 Sleep
 Restart
⏻ Shutdown"

selected=$(echo -e "$options" | rofi -dmenu -theme "$theme" -kb-row-up "Up,k" -kb-row-down "Down,j" -p "$HOSTNAME")

[ -z "$selected" ] && exit 0

confirm=$(echo -e "Yes\nNo" | rofi -dmenu -theme "$confirm_theme" -mesg "Are you sure?" -p "$selected") 

[ -z "$confirm" ] && exit 0

if [[ $confirm == "Yes" ]]; then
  case "$selected" in
    " Lock") hyprlock;;
    "󰍃 Logout") hyprctl dispatch exit 0;;
    "⏻ Shutdown") systemctl poweroff;;
    " Restart") reboot;;
    *) exit;;
  esac
fi
