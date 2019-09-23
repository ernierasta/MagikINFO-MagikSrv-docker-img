FROM frolvlad/alpine-mono

EXPOSE 6810

RUN wget "http://magikinfo.cz/data/downloads/tools/MagikSrv-14.0.tar.bz2" -O "/opt/magiksrv.tar.bz2" && \
    cd /opt && tar xf "/opt/magiksrv.tar.bz2" && \
    rm "/opt/magiksrv.tar.bz2"

CMD cd /opt/MagikSrv && sh MagikSrv.sh


