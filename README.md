# MagikINFO MagikSrv docker img

This is MagikINFO MagikSrv Linux docker image based on Alpine Linux.

We currently ship version 14.0 due to compatibility reasons, but it is working well with current version of MagikINFO.

Usage:

``` bash
docker run --name magiksrv --restart always -p6810:6810 -d magikinfo/magiksrv
```

Explanation:
`--name magiksrv` - name running container,
`--restart always` - keeps container running, restarts it automatically,
`-p6810:6810` - expose communication server port to the host,
`-d` - run in background (detach console).
