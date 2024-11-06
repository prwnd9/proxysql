# https://hub.docker.com/_/alpine/
FROM alpine:3.20.3
RUN apk update --no-cache && \
    apk add --no-cache busybox-extras mysql-client # mariadb-connector-c-dev # caching_sha2_password fix
