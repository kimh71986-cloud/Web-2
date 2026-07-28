#!/bin/bash
set -e

# composer install
# wait $!
php artisan key:generate
wait $!
php artisan migrate --force
php artisan serve --host=0.0.0.0 --port=8000
