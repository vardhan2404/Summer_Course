#!/bin/bash
play_alarm() {
  if command -v speaker-test >/dev/null 2>&1; then
    speaker-test -t sine -f 1000 -l 1 -P 1 -p 1 >/dev/null
  else
        if command -v paplay >/dev/null 2>&1; then
            paplay /usr/share/sounds/freedesktop/stereo/complete.oga >/dev/null
        else
            sudo echo -e "\a"
        fi
  fi
}

while true; do
  play_alarm
  sleep 1
done | at now

