#!/bin/bash

echo 'Server = http://mirror.vpsfree.cz/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist
pacman -Syy --noconfirm ffmpeg nodejs git imagemagick
npm install -g gulp pm2 coffee-script

# Install nvm with node and npm
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash \
    && source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

