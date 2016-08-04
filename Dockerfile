# PHP 7 with Opcache, Bcmath, Intl
FROM php:cli
MAINTAINER Carlos Buenosvinos <carlos.buenosvinos@gmail.com>

RUN apt-get update && docker-php-ext-install -j$(nproc) bcmath opcache intl 
RUN mkdir -p /usr/src/app

VOLUME ["/usr/src/app"]