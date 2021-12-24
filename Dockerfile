FROM php:7.4.27-buster

RUN docker-php-ext-install mysqli

COPY . /var/www/html

WORKDIR /var/www/html

ENTRYPOINT php -S 0.0.0.0:8080
