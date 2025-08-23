#!/bin/bash

# Get the current playing song from Spotify using dbus
info=$(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify \
/org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get \
string:"org.mpris.MediaPlayer2.Player" string:"Metadata")

status=$(playerctl -p spotify status)
artist=$(echo "$info" | grep -A 2 "xesam:artist" | tail -1 | cut -d '"' -f 2)
title=$(echo "$info" | grep -A 1 "xesam:title" | tail -1 | cut -d '"' -f 2)

close_message="Spotify is closed."

twolines() {
if [[ -z "$info" ]]; then
    echo ""
  else
    echo "$artist"
    echo "$title"
  fi
}

oneline() {
if [[ -z "$info" ]]; then
    echo $close_message
  else
    echo "$artist - $title"
  fi
}

# json() {

# }

play() {
  if [[ -z "$status" ]]; then
    echo "󰓛"
  elif [ "$status" == "Paused" ]; then
    echo "󰐊"
  elif [ "$status" == "Playing" ]; then
    echo "󰏤"
  fi
}

case $1 in
  1) oneline ;;
  2) twolines ;;
  play) play ;;
  auto-refresh) auto-refresh ;;
esac