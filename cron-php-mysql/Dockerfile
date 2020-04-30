FROM php:7.3.17-alpine

RUN docker-php-ext-install mysqli pdo_mysql
RUN apk add --no-cache incron

CMD ["incrond", "-n"]
