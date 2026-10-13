#!/usr/bin/env bash
# Renders cards.html into ../<card>-<theme>.png (2x, transparent background).
set -euo pipefail
cd "$(dirname "$0")"
# card:width:height in CSS px, card size + body padding (28 x 32)
for spec in hero:772:182 syschange:772:362 agent-skills:257:128 tsukuyomi:257:128 rtk:257:128 stack:772:88 mail:84:88; do
  IFS=: read -r card w h <<<"$spec"
  for theme in dark light; do
    chromium --headless --disable-gpu --hide-scrollbars --force-device-scale-factor=2 --default-background-color=00000000 \
      --virtual-time-budget=5000 --window-size="$w,$h" --screenshot="../$card-$theme.png" \
      "file://$PWD/cards.html?c=$card&t=$theme" 2>/dev/null
  done
done
