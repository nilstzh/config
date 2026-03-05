STATE=/tmp/ddc_bus7

# fallback if state file missing
[ ! -f "$STATE" ] && echo 50 > "$STATE"

cat "$STATE"
