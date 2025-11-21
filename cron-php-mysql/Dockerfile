FROM php:8.5.0-fpm-alpine

RUN docker-php-ext-install mysqli pdo_mysql
RUN apk add --no-cache incron

CMD ["incrond", "-n"]
