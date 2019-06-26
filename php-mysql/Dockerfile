FROM php:7.2-fpm-alpine

RUN apk add --no-cache gettext gettext-libs gettext-asprintf \
    && apk add --no-cache --virtual .deps gettext-dev
RUN docker-php-ext-install gettext mysqli pdo_mysql
RUN apk del .deps \
    && rm -rf /tmp/*
