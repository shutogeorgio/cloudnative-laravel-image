#!/bin/bash
php artisan config:cache;
php artisan cache:clear;
php artisan view:clear;
npm install;
npm run dev;
$@
vendor/bin/heroku-php-nginx /public;
