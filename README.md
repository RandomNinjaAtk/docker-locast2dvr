# [RandomNinjaAtk/locast2dvr](https://github.com/RandomNinjaAtk/docker-locast2dvr)
[![Docker Build](https://img.shields.io/docker/cloud/automated/randomninjaatk/locast2dvr?style=flat-square)](https://hub.docker.com/r/randomninjaatk/locast2dvr)
[![Docker Pulls](https://img.shields.io/docker/pulls/randomninjaatk/locast2dvr?style=flat-square)](https://hub.docker.com/r/randomninjaatk/locast2dvr)
[![Docker Stars](https://img.shields.io/docker/stars/randomninjaatk/locast2dvr?style=flat-square)](https://hub.docker.com/r/randomninjaatk/locast2dvr)
[![Docker Hub](https://img.shields.io/badge/Open%20On-DockerHub-blue?style=flat-square)](https://hub.docker.com/r/randomninjaatk/locast2dvr)
[![Discord](https://img.shields.io/discord/747100476775858276.svg?style=flat-square&label=Discord&logo=discord)](https://discord.gg/JumQXDc "realtime support / chat with the community." )

[locast2dvr](https://github.com/wouterdebie/locast2dvr) - This application provides an interface between locast.org and Plex Media Server (PMS) or Emby by acting like a HDHomerun or an m3u Tuner and an XMLTV provider.

[![locast2dvr](https://raw.githubusercontent.com/RandomNinjaAtk/unraid-templates/master/randomninjaatk/img/locast2dvr.png)](https://github.com/wouterdebie/locast2dvr)

## Supported Architectures

The architectures supported by this image are:

| Architecture | Tag |
| :----: | --- |
| x86-64 | amd64-latest |

## Version Tags

| Tag | Description |
| :----: | --- |
| latest | LSIO Ubuntu Focal + Python, FFMEPG & locast2dvr |

## Parameters

Container images are configured using parameters passed at runtime (such as those above). These parameters are separated by a colon and indicate `<external>:<internal>` respectively. For example, `-p 8080:80` would expose port `80` from inside the container to be accessible from the host's IP on port `8080` outside the container.

| Parameter | Function |
| ---- | --- |
| `-e L2DHOSTIP=###.###.###.###` | Host IP Address, set to the host ip address |
| `-e L2DUSER="username"` | Locast Username |
| `-e L2DPASS="password"` | Locast Password |
| `-e L2DZIP=#####,#####` | Locast Zipcodes, zipcode in format: #####,#####,##### |

### docker

```
docker create \
  --name=locast2dvr \
  --network host \
  -e L2DHOSTIP=###.###.###.### \
  -e L2DUSER="username" \
  -e L2DPASS="password" \
  -e L2DZIP=#####,##### \
  randomninjaatk/locast2dvr 
```


### docker-compose

Compatible with docker-compose v2 schemas.

```
version: "2.1"
services:
  locast2dvr:
    image: randomninjaatk/locast2dvr 
    container_name: locast2dvr
    network: host
    environment:
      - L2DHOSTIP=###.###.###.###
      - L2DUSER="username" \
      - L2DPASS="password" \
      - L2DZIP=#####,##### \
    restart: unless-stopped
```

<br />
<br />
<br />

# Credits
- [ffmpeg](https://ffmpeg.org/)
- [locast2dvr](https://github.com/wouterdebie/locast2dvr)
