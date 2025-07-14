#!/bin/bash

# Get the current user's environment
export WAYLAND_DISPLAY=$(ls /run/user/$(id -u)/wayland-* | head -n 1)
export XDG_RUNTIME_DIR="/run/user/$(id -u)"

# Check if Waybar is running
if pgrep -x "waybar" > /dev/null; then
    pkill -x waybar
    # notify-send "Waybar Disabled" -t 1000
else
    # Start Waybar with proper environment
    /usr/bin/waybar > /dev/null 2>&1 &
    # notify-send "Waybar Enabled" -t 1000
fi
