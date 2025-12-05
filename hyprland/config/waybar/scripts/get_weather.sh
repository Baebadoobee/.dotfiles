#!/usr/bin/env bash
# $1?format=1
# $1?format=4

for i in {1..5}; do
  text=$(curl -s "https://wttr.in/cruz_das_almas?format=1")
  if [[ $? == 0 ]]; then
    text=$(echo "$text" | sed -E "s/\s+/ /g")
    tooltip=$(curl -s "https://wttr.in/cruz_das_almas?format=4")
    if [[ $? == 0 ]]; then
      tooltip=$(echo "$tooltip" | sed -E "s/\s+/ /g")
      echo "{\"text\":\"$text\", \"tooltip\":\"$tooltip\"}"
      exit
    fi
  fi
  sleep 0
done
echo "{\"text\":\"error\", \"tooltip\":\"error\"}"
