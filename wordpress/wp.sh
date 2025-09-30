#!/bin/bash

set -e
PATH=/bin:/sbin:/usr/bin:/usr/sbin
service mariadb start &
sleep 5
echo "CREATE DATABASE wordpress;" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO \"wordpress\"@\"localhost\"
        IDENTIFIED BY \"abc123.\";" | mysql -u root

exec apachectl -D FOREGROUND