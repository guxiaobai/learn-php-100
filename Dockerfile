FROM php:7.4-fpm
MAINTAINER guxiaobai <sikuan.gu@gmail.com>

RUN pecl channel-update pecl.php.net

RUN pecl install redis \
	&& docker-php-ext-enable redis

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app