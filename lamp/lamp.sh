#!/bin/bash

set -e
PATH=/bin:/sbin:/usr/bin:/usr/sbin
service mysql start &
exec apachectl -D FOREGROUND