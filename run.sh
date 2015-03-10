#!/bin/bash

echo 'Server = http://mirror.vpsfree.cz/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist
pacman -Syy --noconfirm ffmpeg nodejs git imagemagick
npm install -g gulp pm2 coffee-script

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 0.10.36

# Install nvm with node and npm
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash \
    && source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/v$NODE_VERSION/bin:$PATH
