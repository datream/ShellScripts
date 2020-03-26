#!/usr/bin/bash


while [ "$(cat /sys/class/power_supply/BAT0/status)" == "Charging" ]
do
  if [ "$(cat /sys/class/power_supply/BAT0/capacity)" -ge 90 ]; then
    'notify-send' -a "Battery Notifier" -i "/home/rheez/.local/share/icons/McMojave-circle-dark/status/24/battery_charged.svg" "Charging complete" "Consider turning off AC supply"
    exit
  else
    sleep 60
  fi
done