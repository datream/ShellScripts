#!/usr/bin/zsh

while [[ "$(cat /sys/class/power_supply/BAT0/status)" == "Discharging" ]]
do
  if [ "$(cat /sys/class/power_supply/BAT0/capacity)" -ge 90 ]; then
    'notify-send' -a "Battery Notifier" -i "$XDG_DATA_HOME/icons/McMojave-circle-dark/status/24/battery_charged.svg" "Charging complete" "Consider turning off power supply"
    exit
  else
    sleep 60
  fi
done