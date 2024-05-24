#!/bin/bash

# 170

width=$(yabai -m query --displays --display | jq '.frame.w' | sed 's/\..*//')

x=$(((width / 2) - (170)))

x=$((x * 2))

# echo $x

# x=2234

/Applications/Alacritty.app/Contents/MacOS/alacritty \
	-t 'VIMFLOAT' \
	--option "window.position={ x = ${x}, y = 400}" \
	--option window.dimensions.columns=40 \
	--option window.dimensions.lines=20 \
	-e ~/.local/bin/launcher
