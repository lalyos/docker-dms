## from csaba 

....


## Docker build

```
docker build -t lunch:v1 .
```

set FROM image tag:
- https://hub.docker.com/_/ubuntu

build multiple tags:
```
docker build \
  -t lunch:v2 \
  -t lunch:latest \
  .
```

use the new image
```
docker run -d \
  --name coffee \
  lunch:v2
```

curl from inside:
```
docker exec coffee curl -s localhost
```

## Expose port

```
docker run -d \
  -p 8080:80 \
  lunch:v2
```

## 12 factor

- https://12factor.net/

```
docker run -d \
  -p 80 \
  -e TITLE="Coffetime for lalyos" \
  -e COLOR="lightgreen" \
  -e BODY='<iframe src="https://giphy.com/embed/4xG3FzauZFmUNMcTLy" width="480" height="480" style="" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/Meowingtons-cat-pizza-milton-the-4xG3FzauZFmUNMcTLy">via GIPHY</a></p>' \
  lunch:v4
```

## Build from URL

```
docker build \
  -t lunch:v5 https://github.com/lalyos/docker-dms.git

docker run -d -p 80 lunch:v5
```

## Volumes

Bind Volume

```
```

Named Volume

## Database


```
docker run -d \
  --name mydb \
  -v vipdb:/var/lib/mysql \
  -v ${PWD}/sql:/docker-entrypoint-initdb.d \
  -e MARIADB_ROOT_PASSWORD=secret  mariadb:11
```

## Compose
