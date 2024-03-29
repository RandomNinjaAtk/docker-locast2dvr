# Deprecated

This repository is now deprecated, will no longer be updated and is being set to archived.

# [RandomNinjaAtk/locast2dvr](https://github.com/RandomNinjaAtk/docker-locast2dvr)


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

Container images are configured using the following parameters passed at runtime.

| Parameter | Function |
| ---- | --- |
| `-e L2DHOSTIP=###.###.###.###` | Host IP Address, set to the host ip address |
| `-e L2DUSER="username"` | Locast Username |
| `-e L2DPASS="password"` | Locast Password |
| `-e L2DZIP=#####,#####` | Locast Zipcodes, zipcode in format: #####,#####,##### |

### docker
Don't use quotation marks in the environmental variables.

```
docker create \
  --name=locast2dvr \
  --network host \
  -e L2DHOSTIP=###.###.###.### \
  -e L2DUSER=username \
  -e L2DPASS=password \
  -e L2DZIP=#####,##### \
  randomninjaatk/locast2dvr 
```


### docker-compose

Compatible with docker-compose v2 schemas. Don't use quotation marks in the environmental variables.

```
version: "2.1"
services:
  locast2dvr:
    image: randomninjaatk/locast2dvr 
    container_name: locast2dvr
    network_mode: host
    environment:
      - L2DHOSTIP=###.###.###.###
      - L2DUSER=username
      - L2DPASS=password
      - L2DZIP=#####,#####
    restart: unless-stopped
```

<br />
<br />
<br />

# Credits
- [ffmpeg](https://ffmpeg.org/)
- [locast2dvr](https://github.com/wouterdebie/locast2dvr)
