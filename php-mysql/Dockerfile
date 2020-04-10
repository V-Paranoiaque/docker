FROM php:7.3.16-fpm-alpine

RUN apk add --no-cache gettext gettext-libs gettext-asprintf libpng libzip \
    && apk add --no-cache --virtual .deps autoconf gettext-dev g++ libpng-dev libzip-dev make
RUN pecl install apcu \
    && docker-php-ext-install exif gd gettext mysqli pdo_mysql zip \
    && docker-php-ext-enable apcu gd
RUN apk del .deps \
    && rm -rf /tmp/*
