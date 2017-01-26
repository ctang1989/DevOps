#
# Dockerfile to setup LAMP environment with official php:7.1-apache image
#
# Building:
#
#    docker build -t ctang/php7-apache-pdo .
#
# Running:
#
#    docker run -d --name php7-apache-pdo -v /home/ctang/container/php7-apache-pdo/html:/var/www/html -p 8083:80 --link mysql:mysql ctang/php7-apache-pdo 
#
FROM php:7.1-apache
MAINTAINER CTANG <mchina_tang@qq.com>

RUN docker-php-ext-install pdo_mysql
