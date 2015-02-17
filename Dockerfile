FROM          base/archlinux
MAINTAINER    Martin Zajíc <zajca@zajca.cz>

COPY          run.sh /tmp/run.sh

RUN           bash /tmp/run.sh
