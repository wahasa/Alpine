#!/bin/bash
sudo apk add libreoffice
rm -rf /usr/lib/libreoffice/program/oosplash

wget -q https://github.com/wahasa/Ubuntu/blob/main/Patch/oosplash?raw=true -O /usr/lib/libreoffice/program/oosplash

chmod +x /usr/lib/libreoffice/program/oosplash
mkdir /prod && mkdir /prod/version

rm libreofficefix.sh
