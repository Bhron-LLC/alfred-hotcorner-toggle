#!/bin/zsh
set -eu
current=$(/usr/bin/defaults read com.apple.dock wvous-tr-corner 2>/dev/null || true)
if [[ "$current" == "12" ]]; then
  next=0
  label="Disabled"
else
  next=12
  label="Notification Center enabled"
fi
/usr/bin/defaults write com.apple.dock wvous-tr-corner -int "$next"
/usr/bin/killall Dock 2>/dev/null || true
printf 'Top-right Hot Corner: %s\n' "$label"
