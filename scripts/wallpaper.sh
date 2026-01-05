#!/bin/env bash

DIR="$HOME/.config/hypr/wallprapers"

echo $DIR

sleep 0.5

while true; do
  WALL=$(find "$DIR" -type f | shuf -n 1)
  swww img "$WALL" --transition-type fade --transition-duration 1.5
  sleep 3600
done
