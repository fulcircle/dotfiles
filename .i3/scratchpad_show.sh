#!/bin/bash

if [ $2 == "class" ]; then
	windows=( $(xdotool search --classname "$3") )
elif [ $2 == "title" ]; then
	windows=( $(xdotool search --name "$3") )
fi

if [ "${#windows[@]}" -eq "0" ]; then
	i3-msg "exec --no-startup-id $1"
	sleep 0.5
	i3-msg "[$2=$3] move scratchpad"
fi

i3-msg "[$2=$3] $4, scratchpad show"

