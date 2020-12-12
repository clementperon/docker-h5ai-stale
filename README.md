Fork form Linux Server h5ai docker

## Usage

Here are some example snippets to help you get started creating a container.

### docker-compose ([recommended](https://docs.linuxserver.io/general/docker-compose))

Compatible with docker-compose v2 schemas.

```yaml
---
version: "2.1"
services:
  h5ai:
    image: clementperon/h5ai
    container_name: h5ai
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/Paris
    volumes:
      - /path/to/appdata/config:/config
      - /path/to/data/www:/config/www
    restart: unless-stopped
```

### docker cli

```
docker run -d \
  --name=h5ai \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -v /path/to/appdata/config:/config \
  -v /path/to/data/www:/config/www \
  clementperon/h5ai
```


## Parameters

Container images are configured using parameters passed at runtime (such as those above). These parameters are separated by a colon and indicate `<external>:<internal>` respectively. For example, `-p 8080:80` would expose port `80` from inside the container to be accessible from the host's IP on port `8080` outside the container.

| Parameter | Function |
| :----: | --- |
| `-e PUID=1000` | for UserID - see below for explanation |
| `-e PGID=1000` | for GroupID - see below for explanation |
| `-e TZ=Europe/London` | Specify a timezone to use EG Europe/London |
| `-v /config` | Contains all relevant configuration files. |
| `-v /var/www` | www data that h5ai will display. |
