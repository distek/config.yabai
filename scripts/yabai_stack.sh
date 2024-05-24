#!/usr/local/bin/bash

case $1 in
    prev)
        if ! yabai -m window --focus stack.prev; then
            yabai -m window --focus stack.last
        fi
        ;;
    next)
        if ! yabai -m window --focus stack.next; then
            yabai -m window --focus stack.first
        fi
        ;;
esac
