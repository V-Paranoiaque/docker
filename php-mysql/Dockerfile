FROM php:7.3.16-fpm-alpine

RUN apk add --no-cache gettext gettext-libs gettext-asprintf \
    && apk add --no-cache --virtual .deps autoconf gettext-dev g++ libpng-dev make
RUN pecl install apcu \
    && docker-php-ext-install gd gettext mysqli pdo_mysql \
    && docker-php-ext-enable apcu
RUN apk del .deps \
    && rm -rf /tmp/*
