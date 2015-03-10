FROM          base/archlinux
MAINTAINER    Martin Zajíc <zajca@zajca.cz>

COPY          run.sh /tmp/run.sh

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 0.10.36
ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/v$NODE_VERSION/bin:$PATH

RUN           bash /tmp/run.sh

