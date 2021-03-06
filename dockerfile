FROM php:7.2-apache

RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli pdo_mysql

RUN mkdir /app \
 && mkdir /app/my-php-mysql-site \
 && mkdir /app/my-php-mysql-site/www

COPY www/ /app/my-php-mysql-site/www/

RUN cp -r /app/my-php-mysql-site/www/* /var/www/html/.