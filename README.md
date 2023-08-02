# docker-clash

This is a page built from nginx:mainline-alpine-slim to clash and it's only 12m.

```bash
docker pull fw1314/clash
docker run --name clash -d -p 9990:8888 -p 9999:8080  fw1314/clash
```

* 8888: clash dashboard port
* 8080: clash yacd port
