FROM php:8.1-fpm
MAINTAINER guxiaobai <sikuan.gu@gmail.com>


RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app