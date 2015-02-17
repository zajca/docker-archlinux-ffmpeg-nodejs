FFMPEG for Docker on Archlinux with NPM ImageMagic and GULP,PM2,coffee-script for NODEJS video projects
=====================================================================================================

sample use:
```
FROM          zajca/docker-archlinux-ffmpeg-nodejs

COPY . /src

RUN cd /src && npm install && gulp prod && mkdir -p /.pm2 && touch /.pm2/pm2.log;

EXPOSE  80

ENTRYPOINT ["pm2"]
CMD ["start", "-x","/src/index.coffee", "--no-daemon"]
```

if you want to use different mirror fork this and change line:
```
echo 'Server = http://mirror.vpsfree.cz/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist
```
for whatever mirror U want.