FROM frolvlad/alpine-mono

EXPOSE 6810

RUN wget "http://magikinfo.cz/data/downloads/tools/MagikSrv-14.0.tar.bz2" -O "/magiksrv.tar.bz2" && \
    tar xf "/magiksrv.tar.bz2" && \
    rm "/magiksrv.tar.bz2"

VOLUME "/opt/MagikSrv"

CMD cd "/MagikSrv" && sh MagikSrv.sh

