#!/bin/bash
# Newest screenshot -> clipboard. Fired by launchd WatchPaths on the folder
# (com.damireh.screenshot-clipboard), so each capture is both a file and a paste.
f=$(ls -t ~/Pictures/Screenshots/Screenshot*.png | head -1)
osascript -e "set the clipboard to (read (POSIX file \"$f\") as «class PNGf»)"
