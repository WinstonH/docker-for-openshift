#!/bin/sh
nginx
php-fpm7
sed -i "s/UUID/$UUID/g" /etc/v2ray/config.json
/usr/bin/supervisord -c /etc/supervisord.conf
exec "$@"
