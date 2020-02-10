#!/bin/sh

composer install
chown -R www-data:www-data /var/www
chmod -R 775 /var/www/storage
php artisan key:generate
php artisan migrate
php-fpm