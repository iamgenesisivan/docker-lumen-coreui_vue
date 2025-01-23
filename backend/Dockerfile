# # Use official PHP 8 FPM image
FROM php:8.0-fpm

ARG DEBIAN_BACKEND=noninteractive

RUN apt-get -y update && apt install nginx -y

WORKDIR /var/www/

RUN rm -rf /var/www/html/*

RUN unlink /etc/nginx/sites-enabled/default

RUN rm /etc/nginx/sites-available/default

COPY nginx/default /etc/nginx/sites-available

RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

RUN chown -R www-data:www-data /var/www

RUN chmod -R 755 /var/www

RUN docker-php-ext-install pdo pdo_mysql

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir /usr/local/bin --filename=composer \
    && php -r "unlink('composer-setup.php');" 

EXPOSE 80

CMD service nginx start && php-fpm
