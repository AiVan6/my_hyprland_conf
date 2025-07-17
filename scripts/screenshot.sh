#!/bin/bash

MODE=$1
filename="$HOME/Pictures/screenshot-$(date +%Y-%m-%d_%H-%M-%S).png"
#full - делает полный экран, region - можно выбрать
if [[ "$MODE" == "full" ]]; then
  grim "$filename"
elif [[ "$MODE" == "region" ]]; then
  grim -g "$(slurp)" "$filename"
fi
#копирование в буфер обмена
wl-copy <"$filename"
notify-send "📸 Скриншот ($MODE) сохранён и скопирован" "$filename"
