#!/bin/sh

mkdir -p /opt/MagikSrv/ActivityMonitor/Config
mkdir -p /opt/MagikSrv/HDRequests
mkdir -p /opt/MagikSrv/RemoteDeployment/Batches/{Error,New,OK,Processed}
mkdir -p /opt/MagikSrv/RemoteDeployment/Sources


# run virtual display
Xvfb :99 -screen 0 1024x768x16 &

# run MagikINFO Communication Server
export MONO_IOMAP=all; export DISPLAY=:99; mono MagikSrv.exe /debug
