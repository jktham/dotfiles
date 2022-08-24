#!/bin/bash

killall -q polybar

polybar example | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
