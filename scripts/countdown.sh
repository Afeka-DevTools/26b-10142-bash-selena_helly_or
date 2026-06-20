#!/bin/bash

read -r -p "Enter countdown time (HH:MM:SS): " input_time

if [[ ! "$input_time" =~ ^([0-9]{1,2}):([0-5][0-9]):([0-5][0-9])$ ]]; then
	echo "Invalid time format. Use HH:MM:SS."
	exit 1
fi

hours=${BASH_REMATCH[1]}
minutes=${BASH_REMATCH[2]}
seconds=${BASH_REMATCH[3]}

total_seconds=$((10#$hours * 3600 + 10#$minutes * 60 + 10#$seconds))

while (( total_seconds >= 0 )); do
	current_hours=$((total_seconds / 3600))
	current_minutes=$(((total_seconds % 3600) / 60))
	current_seconds=$((total_seconds % 60))

	printf "\r%02d:%02d:%02d" "$current_hours" "$current_minutes" "$current_seconds"
    if (( total_seconds == 0 )); then
        break
    fi
	sleep 1
	total_seconds=$((total_seconds - 1))
done

printf "\nCountdown complete!\n"
