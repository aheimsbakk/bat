#
# Docker: duply-b2
#
# Docker with newer version of duplicity, duply and backblaze integration
#
# Example:
#   alias bat='podman run -it --rm -e BAT_THEME -e BAT_STYLE -e BAT_TABS -v "$(pwd):/data:ro,Z" aheimsbakk/bat 2>/dev/null'


# Base image
FROM docker.io/aheimsbakk/base-alpine:latest

# Install latest bat
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories; \
    apk update; \
    apk add dumb-init bash bat; \
    mkdir /data; \
    rm -rf /var/cache/apk/*

# Mount these volumes
VOLUME /data

# When exec to docker, start in /data
WORKDIR /data

# Run bat
ENTRYPOINT ["/usr/bin/bat"]
