#!/bin/sh
# Renderiza las piezas IG a PNG con Chrome headless. Uso: sh src/render.sh  (desde la carpeta ig/)
CH="/c/Program Files/Google/Chrome/Application/chrome.exe"
DIR="$(cd "$(dirname "$0")/.." && pwd -W 2>/dev/null || pwd)"
URL="file:///$(echo "$DIR" | sed 's/ /%20/g')/src/piece.html"
for p in c1 c2 c3 c4 c5; do "$CH" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=1 --virtual-time-budget=6000 --window-size=1080,1350 --screenshot="$DIR/carrusel-$p.png" "$URL?p=$p&clean" >/dev/null 2>&1; done
for p in m1 m2 m3; do "$CH" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=1 --virtual-time-budget=6000 --window-size=1080,1350 --screenshot="$DIR/takeover-feed-$p.png" "$URL?p=$p&clean" >/dev/null 2>&1; done
for p in n1 n2 n3; do "$CH" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=1 --virtual-time-budget=6000 --window-size=1080,1920 --screenshot="$DIR/takeover-historia-$p.png" "$URL?p=$p&clean" >/dev/null 2>&1; done
for p in s1 s2 s3; do "$CH" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=1 --virtual-time-budget=6000 --window-size=1080,1920 --screenshot="$DIR/historia-$p.png" "$URL?p=$p&clean" >/dev/null 2>&1; done
