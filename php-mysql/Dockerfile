FROM php:7.2-fpm-alpine

RUN apk add --no-cache gettext gettext-libs gettext-asprintf \
    && apk add --no-cache --virtual .deps autoconf gettext-dev g++ make
RUN docker-php-ext-install gettext mysqli pdo_mysql
    && docker-php-ext-enable apcu
RUN apk del .deps \
    && rm -rf /tmp/*
