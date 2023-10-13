FROM php:7.4-fpm

RUN docker-php-ext-install sockets

RUN apt-get update --fix-missing && apt-get install -y wget ffmpeg && apt-get upgrade -y

COPY . /var/www/html

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN composer install

EXPOSE 80
