#! /bin/sh
php-fpm 2> /dev/stderr &
/usr/sbin/nginx -g "daemon off; error_log /dev/stderr info;"
