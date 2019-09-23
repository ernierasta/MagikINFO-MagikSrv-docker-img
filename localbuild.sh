#/bin/sh

# test container by building it localy

docker build - -t magikinfo/magiksrv < Dockerfile
docker run --name magiksrv -p6810:6810 -d  magikinfo/magiksrv

# clean up
# docker kill magiksrv
# docker rm magiksrv
# docker rmi magikinfo/magiksrv
