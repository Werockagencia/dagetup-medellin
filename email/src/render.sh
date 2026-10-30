#!/bin/sh
# Renderiza el banner del correo a PNG con Chrome headless. Uso: sh src/render.sh  (desde la carpeta email/)
CH="/c/Program Files/Google/Chrome/Application/chrome.exe"
DIR="$(cd "$(dirname "$0")/.." && pwd -W 2>/dev/null || pwd)"
URL="file:///$(echo "$DIR" | sed 's/ /%20/g')/src/banner.html"
"$CH" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=1 --virtual-time-budget=6000 --window-size=1200,750 --screenshot="$DIR/banner.png" "$URL" >/dev/null 2>&1
