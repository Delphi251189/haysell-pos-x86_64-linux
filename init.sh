#!/bin/bash

mkdir -p /usr/share/applications
cp ./desktop/haysell-pos.desktop /usr/share/applications/haysell-pos.desktop

for VARIABLE in 16 20 22 24 32 36 48 64 128 256
do
	mkdir -p /usr/share/icons/hicolor/${VARIABLE}x${VARIABLE}/apps
	cp ./icons/${VARIABLE}x${VARIABLE}.png /usr/share/icons/hicolor/${VARIABLE}x${VARIABLE}/apps/haysell.png
done

ln -s `pwd`/haysell-pos /usr/bin/haysell-pos
