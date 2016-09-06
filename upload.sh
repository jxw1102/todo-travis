#!/bin/sh

OUTPUTDIR="$PWD/app/build/outputs/apk"

if [ ! -z "$PGYER_USER_KEY" ] && [ ! -z "$PGYER_API_KEY" ]; then
    echo ""
    echo "***************************"
    echo "* Uploading to pgyer.com  *"
    echo "***************************"
    curl http://www.pgyer.com/apiv1/app/upload \
        -F uKey="$PGYER_USER_KEY" \
        -F _api_key="$PGYER_API_KEY" \
        -F file="@$OUTPUTDIR/app-prod-debug.apk"
fi
