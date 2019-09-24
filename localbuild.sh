#/bin/sh

# test container by building it localy
docker build - -t magikinfo/magiksrv < Dockerfile
docker run --name magiksrv -v /tmp/MagikSrv:/opt/MagikSrv -p6810:6810 -d  magikinfo/magiksrv
