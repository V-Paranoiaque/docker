FROM php:8.0.22-fpm-alpine

RUN apk add --no-cache freetype gettext gettext-libs gettext-asprintf imagemagick-libs libjpeg-turbo libpng libzip shadow zip \
    && apk add --no-cache --virtual .deps autoconf freetype-dev gettext-dev g++ imagemagick-dev libjpeg-turbo-dev libpng-dev libzip-dev make
RUN pecl install apcu imagick \
    && docker-php-ext-configure gd \
    --enable-gd \
    --with-freetype=/usr/include/ \
    --with-jpeg=/usr/include/ \
    && docker-php-ext-install exif gd gettext mysqli pdo_mysql zip \
    && docker-php-ext-enable apcu imagick opcache
RUN apk del .deps \
    && rm -rf /tmp/*
RUN usermod -u 101 www-data

COPY php.ini /usr/local/etc/php/conf.d/php.override.ini
COPY www.conf /usr/local/etc/php-fpm.d/www.conf
