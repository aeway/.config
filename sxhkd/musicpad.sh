#!/bin/sh

id=$(xdo id -n musicpad);
if [ -z "$id" ]; then
    urxvt -name musicpad -b 5 -bg black -fg white -e /home/artyom/.local/bin/omp;
else
    action='hide';
    if [[ $(xprop -id $id | awk '/window state: / {print $3}') == 'Withdrawn' ]]; then
	action='show';
    fi
    xdo $action -n musicpad;
fi
