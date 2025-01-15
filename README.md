# MagikINFO MagikSrv docker img

This is MagikINFO MagikSrv Linux docker image based on Alpine Linux.

We currently ship version ~~14.0 due to compatibility reasons, but~~ 18.5, it is working well with current version of MagikINFO.

Usage:

``` bash
docker run -v /host/MagikSrv:/opt/MagikSrv --name magiksrv --restart always -p6810:6810 -d magikinfo/magiksrv
```

If you want to start with empty data folder, just specify non-existing path (docker will create it for You). Let's say `-v /opt/MagikSrv:/opt/MagikSrv` which will mount host directory into container. Do not change path in container, Communication Server expects it's data in `/opt/MagikSrv`.

Explanation:
* `-v /host/MagikSrv:/opt/MagikSrv` - mount Communication Server data into container,
* `--name magiksrv` - name running container,
* `--restart always` - keeps container running, restarts it automatically,
* `-p6810:6810` - expose communication server port to the host,
* `-d` - run in background (detach console).

In `MagikSrv` directory, there are files which ends up in tarball downloaded from our servers when building docker image. I am including it
here for completeness.
