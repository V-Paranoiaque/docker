FROM php:7.2.26-alpine

RUN docker-php-ext-install mysqli pdo_mysql
RUN apk add --no-cache incron

CMD ["incrond", "-n"]
