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