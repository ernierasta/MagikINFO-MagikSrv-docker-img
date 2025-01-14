FROM alpine:edge

EXPOSE 6810

# add testing repo
RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

# install dependencies
RUN apk add --no-cache mono libgdiplus xvfb font-dejavu

# get MagikSrv files
RUN wget "http://magikinfo.cz/data/downloads/tools/MagikSrv-14.0.tar.bz2" -O "/magiksrv.tar.bz2" && \
    tar xf "/magiksrv.tar.bz2" && \
    rm "/magiksrv.tar.bz2"

VOLUME "/opt/MagikSrv"

CMD cd "/MagikSrv" && sh MagikSrv.sh
