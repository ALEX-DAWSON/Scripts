#!/bin/bash

# Get the current playing song from Spotify using dbus
SPOTIFY_STATUS=$(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify \
/org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get \
string:"org.mpris.MediaPlayer2.Player" string:"Metadata")

ARTIST=$(echo "$SPOTIFY_STATUS" | grep -A 2 "xesam:artist" | tail -1 | cut -d '"' -f 2)
TITLE=$(echo "$SPOTIFY_STATUS" | grep -A 1 "xesam:title" | tail -1 | cut -d '"' -f 2)

if [[ -z "$TITLE" ]]; then
  echo "Spotify is closed."
else
  echo "$ARTIST - $TITLE"
  
fi

# To use this, edit system permissions using the command 
#     "chmod +x ./Scripts/one-line-np.sh"
# Then run in terminal using 
#     "./Scripts/one-line-np.sh"