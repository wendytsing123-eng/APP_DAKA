#!/bin/bash
set -e
RES=android/app/src/main/res
for d in resources/mipmap-*; do cp "$d"/*.png "$RES/$(basename $d)/"; done
cp resources/ic_launcher_background.xml $RES/values/ic_launcher_background.xml
find $RES -name 'splash.png' | while read f; do
  case "$f" in *land*) cp resources/splash_land.png "$f";; *) cp resources/splash.png "$f";; esac
done
