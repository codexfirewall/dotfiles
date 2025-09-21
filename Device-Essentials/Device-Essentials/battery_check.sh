#!/bin/sh

BATTERY_PATH="/sys/class/power_supply/BAT0"
THRESHOLD=15

# Exit if battery path does not exist
if [ ! -d "$BATTERY_PATH" ]; then
  exit
fi

# Get battery status and capacity
CAPACITY=$(cat "$BATTERY_PATH/capacity")
STATUS=$(cat "$BATTERY_PATH/status")

# Check if discharging and below threshold
if [ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -le "$THRESHOLD" ]; then
  notify-send -u critical "Low Battery" "Battery is at ${CAPACITY}%."
  aplay ~/Device-Essentials/output.wav
fi

