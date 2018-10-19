#!/bin/sh
nginx
php-fpm7
if [ -n "$UUID" ];then
    sed -i "s/UUID/$UUID/g" /etc/v2ray/config.json
    echo "You've set an UUID"
    echo "The UUID is: $UUID"
else
    export UUID=$(cat /proc/sys/kernel/random/uuid)
    sed -i "s/UUID/$UUID/g" /etc/v2ray/config.json
    echo "You didn't set an UUID"
    echo "The auto-generated UUID is: $UUID"
fi
/usr/bin/supervisord -c /etc/supervisord.conf
exec "$@"
