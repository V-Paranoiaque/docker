FROM php:8.3.4-alpine

RUN docker-php-ext-install mysqli pdo_mysql
RUN apk add --no-cache incron

CMD ["incrond", "-n"]
