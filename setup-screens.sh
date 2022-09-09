#!/bin/sh

output="$(xrandr | awk '$2 == "connected" {print $1; exit}')"
xrandr --output "$output" --primary --rotate "$(cat /etc/screen-rotation)"
