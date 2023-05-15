FROM php:8.1-fpm
MAINTAINER guxiaobai <sikuan.gu@gmail.com>

RUN apt-get update && apt-get install -y \
    libzip-dev \
  && docker-php-ext-install -j$(nproc) zip

RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app