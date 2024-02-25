# docker-acestream-x86_64-warp

Docker image to run acestream-engine + warp in x86_64 system

## How to run
```
docker compose up -d
```

## Check if works
Replace ``<docker_host>`` with ``localhost`` if you run docker locally
```
http://<docker_host>:6878/webui/api/service?method=get_version
```

## How to play
Acestream can be played using next url
```
http://<docker_host>:6878/ace/getstream?id=<ID>
```
or

```
http://<docker_host>:6878/ace/manifest.m3u8?id=<ID>
```

## Acestream Settings
```
http://<docker_host>:6878/webui/app/acestream/server
```
