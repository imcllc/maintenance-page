#!/bin/bash

LOGO="${LOGO:-}"
SITE_NAME="${SITE_NAME:-We're}"
TRY_AGAIN_TIME_UNIT="${TRY_AGAIN_TIME_UNIT:-minutes}"
TRY_AGAIN_TIME="${TRY_AGAIN_TIME:-15}"
STATUS="${STATUS:-}"

for i in $(find /usr/share/nginx/html -type f -print)
do
    sed -i -e 's$LOGO$'$LOGO'$g' $i
    sed -i -e 's$SITE_NAME$'$SITE_NAME'$g' $i
    sed -i -e 's$TRY_AGAIN_TIME_UNIT$'$TRY_AGAIN_TIME_UNIT'$g' $i
    sed -i -e 's$TRY_AGAIN_TIME$'$TRY_AGAIN_TIME'$g' $i
    sed -i -e 's$STATUS$'$STATUS'$g' $i
done

nginx -g "daemon off;"