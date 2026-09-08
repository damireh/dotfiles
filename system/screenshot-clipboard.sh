#!/bin/bash
f=$(ls -t ~/Pictures/Screenshots/Screenshot*.png | head -1)
osascript -e "set the clipboard to (read (POSIX file \"$f\") as «class PNGf»)"
