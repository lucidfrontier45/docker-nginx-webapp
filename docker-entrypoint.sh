#!/bin/bash
set -e

if [ "${1:0:1}" = '-' ]; then
	set -- nginx "$@"
fi

# if [ "$1" = 'nginx' ]; then
envsubst '$$API_URL' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf
envsubst '$$API_URL' < /etc/nginx/conf.d/ssl.conf.template > /etc/nginx/conf.d/ssl.conf
# fi

exec "$@"