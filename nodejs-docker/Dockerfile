FROM node:22.14.0-alpine

LABEL maintainer="virgil@paranoiaque.fr"

RUN set -x && \
    apk add --no-cache -t .deps ca-certificates && \
    # Install glibc on Alpine (required by docker-compose) from
    # https://github.com/sgerrand/alpine-pkg-glibc
    # See also https://github.com/gliderlabs/docker-alpine/issues/11
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.35-r1/glibc-2.35-r1.apk && \
    apk add --force-overwrite glibc-2.35-r1.apk && \
    rm glibc-2.35-r1.apk && \
    apk del --purge .deps

# Required for docker-compose to find zlib.
ENV LD_LIBRARY_PATH=/lib:/usr/lib

RUN set -x && \
    apk add --no-cache -t .deps ca-certificates && \
    # Required dependencies.
    apk add --no-cache docker libgcc zlib && \
    wget -q -O /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/v2.35.0/docker-compose-linux-x86_64 && \
    chmod a+rx /usr/local/bin/docker-compose && \
    \
    # Clean-up
    apk del --purge .deps
