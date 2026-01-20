#!/bin/bash 

# options=$(ls "$HOME/Documents")
# echo $options | rofi -dmenu -p "Enter your name"

selected=$(ls "$HOME/Documents" | rofi -dmenu -p "open file:")

echo $selected
