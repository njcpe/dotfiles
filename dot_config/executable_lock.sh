#!/bin/bash
ICON=$HOME/.config/lock.png
TMPBG=/tmp/screen.png
scrot -o /tmp/screen.png
convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -u -i $TMPBG
