#!/bin/bash

battery_path=""

for path in /sys/class/power_supply/BAT*/capacity; do
	if [ -f "$path" ]; then
		battery_path="$path"
		break
	fi
done

if [ -n "$battery_path" ]; then
	battery_level=$(cat "$battery_path")
	echo "Battery level: ${battery_level}%"
	exit 0
fi

if command -v upower >/dev/null 2>&1; then
	battery_device=$(upower -e | grep -m1 battery)
	if [ -n "$battery_device" ]; then
		battery_level=$(upower -i "$battery_device" | awk -F': *' '/percentage/ {gsub(/%/, "", $2); print $2; exit}')
		if [ -n "$battery_level" ]; then
			echo "Battery level: ${battery_level}%"
			exit 0
		fi
	fi
fi

echo "Battery level is unavailable on this device."
exit 1
