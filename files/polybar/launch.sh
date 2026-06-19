#!/bin/bash

# Make sure DISPLAY is set
if [ -z "$DISPLAY" ]; then
    export DISPLAY=:0
fi

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
echo "---" | tee -a /tmp/polybar1.log

polybar main 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Polybar launched..."
