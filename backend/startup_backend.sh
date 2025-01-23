#!/bin/bash

# Set correct permissions for the storage folder
chown -R www-data:www-data /var/www/storage
chmod -R 775 /var/www/storage

# Start PHP-FPM and Nginx
php-fpm -D
nginx -g "daemon off;"
