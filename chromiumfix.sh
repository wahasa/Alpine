#!/bin/bash
sudo apk add chromium

sed -i 's/chromium %U/chromium-browser --no-sandbox --test-type %U/g' /usr/share/applications/chromium.desktop

rm chromiumfix.sh
