#/bin/sh

# clean up
docker kill magiksrv
docker rm magiksrv
docker rmi magikinfo/magiksrv
sudo rm -rf /tmp/MagikSrv
