# stubby
Simple docker image for cloudflare DNS-over-TLS using stubby. Based on debian:stable-slim.

Includes the following scripts:
- build.sh - build image locally
- start.sh - start container after build or pull
```bash
# --init -> enable interrupting the container with Ctrl+C
# -p 127.0.0.1:53:53/udp -> forward container 53:udp to localhost
docker run --init -p 127.0.0.1:53:53/udp lukas1818/stubby
```
- stop.sh - kill container

You can mount your own `stubby.yml` under `/etc/stubby/stubby.yml`.

Docker hub: [https://hub.docker.com/r/lukas1818/stubby/](https://hub.docker.com/r/lukas1818/stubby/)

forked from: [https://hub.docker.com/r/oikuda/stubby-quad9/](https://hub.docker.com/r/oikuda/stubby-quad9/)
