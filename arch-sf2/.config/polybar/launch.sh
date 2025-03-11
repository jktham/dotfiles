#!/bin/bash

killall -q polybar

polybar firewatch | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
