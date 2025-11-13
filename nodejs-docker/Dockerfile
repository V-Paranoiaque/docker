FROM node:24.11.1-alpine

LABEL maintainer="virgil@paranoiaque.fr"

RUN set -x && \
    apk add --no-cache -t .deps ca-certificates && \
    # Install glibc on Alpine (required by docker-compose) from
    # https://github.com/sgerrand/alpine-pkg-glibc
    # See also https://github.com/gliderlabs/docker-alpine/issues/11
    wget  -q -O glibc.apk https://alpine.sev.monster/edge/testing/x86_64/glibc-2.41-r0.apk && \
    apk add --allow-untrusted --force-overwrite glibc.apk && \
    rm glibc.apk && \
    apk del --purge .deps

# Required for docker-compose to find zlib.
ENV LD_LIBRARY_PATH=/lib:/usr/lib

RUN set -x && \
    apk add --no-cache -t .deps ca-certificates && \
    # Required dependencies.
    apk add --no-cache docker libgcc zlib && \
    wget -q -O /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/v2.36.0/docker-compose-linux-x86_64 && \
    chmod a+rx /usr/local/bin/docker-compose && \
    \
    # Clean-up
    apk del --purge .deps
