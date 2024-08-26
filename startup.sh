#!/bin/bash

if [[ -z "${LOGO}" ]]; then
  MY_LOGO=""
else
  MY_LOGO="${LOGO}"
fi

if [[ -z "${SITE_NAME}" ]]; then
  MY_SITE_NAME="We're"
else
  MY_SITE_NAME="${SITE_NAME}"
fi

for i in $(find /usr/share/nginx/html -type f -print)
do
    sed -i -e "s#LOGO#$MY_LOGO#g" $i
    sed -i -e "s#SITE_NAME#$MY_SITE_NAME#g" $i
done

nginx -g "daemon off;"
