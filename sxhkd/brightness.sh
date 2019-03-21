#!/bin/bash

dir="/sys/class/backlight/intel_backlight"

current_brightness=$(cat $dir/brightness)
max_brightness=$(cat $dir/max_brightness)

brightness_change=$(($1 * $max_brightness / 100))

new_brightness=$(($current_brightness + $brightness_change))

echo $new_brightness > $dir/brightness
