output="_OUT"

rm -f "$output"

g++ "$1" -o "$output"

./"$output"

# echo "$1"
