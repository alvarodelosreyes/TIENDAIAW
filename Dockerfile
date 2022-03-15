FROM php:7.4-apache

RUN apt-get update
RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt install composer

