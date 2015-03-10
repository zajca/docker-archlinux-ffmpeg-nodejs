#!/bin/bash

echo 'Server = http://mirror.vpsfree.cz/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist
pacman -Syy --noconfirm ffmpeg nodejs git imagemagick
npm install -g gulp pm2 coffee-script
