FROM php:8.3.12-alpine

RUN docker-php-ext-install mysqli pdo_mysql
RUN apk add --no-cache incron

CMD ["incrond", "-n"]
