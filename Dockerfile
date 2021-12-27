FROM php:7.4.27-buster

RUN docker-php-ext-install mysqli
RUN apt-get update && \
    apt-get install -y zlib1g-dev libpng-dev libjpeg-dev

RUN docker-php-ext-configure gd --with-jpeg && \
    docker-php-ext-install gd


COPY . /var/www/html

WORKDIR /var/www/html

ENTRYPOINT php -S 0.0.0.0:8080
