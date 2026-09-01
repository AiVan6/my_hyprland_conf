#!/bin/bash

pid=$(pgrep -f nm-connection-editor)

if [[ ! -z "$pid" ]]; then
  echo $(kill "$pid")
else
  echo $(nm-connection-editor)
fi
