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

if [[ -z "${TRY_AGAIN_TIME_UNIT}" ]]; then
  MY_TRY_AGAIN_TIME_UNIT="minutes"
else
  MY_TRY_AGAIN_TIME_UNIT="${TRY_AGAIN_TIME_UNIT}"
fi

if [[ -z "${TRY_AGAIN_TIME}" ]]; then
  MY_TRY_AGAIN_TIME="15"
else
  MY_TRY_AGAIN_TIME="${TRY_AGAIN_TIME}"
fi

if [[ -z "${STATUS}" ]]; then
  MY_STATUS=""
else
  MY_STATUS="${STATUS}"
fi

for i in $(find /usr/share/nginx/html -type f -print)
do
    sed -i -e "s#LOGO#$MY_LOGO#g" $i
    sed -i -e "s#SITE_NAME#$MY_SITE_NAME#g" $i
    sed -i -e "s#TRY_AGAIN_TIME_UNIT#$MY_TRY_AGAIN_TIME_UNIT#g" $i
    sed -i -e "s#TRY_AGAIN_TIME#$MY_TRY_AGAIN_TIME#g" $i
    sed -i -e "s#STATUS#$MY_STATUS#g" $i
done

nginx -g "daemon off;"