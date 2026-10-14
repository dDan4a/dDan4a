#!/usr/bin/env bash
# Renders cards.html into ../<card>-<theme>.png (2x, transparent background).
set -euo pipefail
cd "$(dirname "$0")"
# card:width:height in CSS px, card size + body padding (28 x 32)
for spec in hero:772:200 syschange:772:362 agent-skills:772:204 tsukuyomi:772:204 group-omarchy:772:44 group-agents:772:44 group-go:772:44 stack:772:88 focus:772:204 mail:84:88 telegram:84:88 linkedin:84:88; do
  IFS=: read -r card w h <<<"$spec"
  for theme in dark light; do
    chromium --headless --disable-gpu --hide-scrollbars --force-device-scale-factor=2 --default-background-color=00000000 \
      --virtual-time-budget=5000 --window-size="$w,$h" --screenshot="../$card-$theme.png" \
      "file://$PWD/cards.html?c=$card&t=$theme" 2>/dev/null
  done
done
