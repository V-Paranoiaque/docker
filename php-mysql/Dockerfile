FROM php:7.3.16-fpm-alpine

RUN apk add --no-cache freetype gettext gettext-libs gettext-asprintf imagemagick-libs libjpeg-turbo libpng libzip \
    && apk add --no-cache --virtual .deps autoconf freetype-dev gettext-dev g++ imagemagick-dev libjpeg-turbo-dev libpng-dev libzip-dev make
RUN pecl install apcu imagick \
    && docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ && \
    && docker-php-ext-install exif gd gettext mysqli pdo_mysql zip \
    && docker-php-ext-enable apcu imagick
RUN apk del .deps \
    && rm -rf /tmp/*
