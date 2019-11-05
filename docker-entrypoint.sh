#!/bin/sh

set -ex
# Checks if node_modules exists and runs [npm ci](https://docs.npmjs.com/cli/ci.html)
if [ ! -f "package-lock.json" ];
then
    npm install
else
    if [ ! -d "node_modules" ];
    then
        npm ci
    fi
fi

$(npm bin)/nuxt

exec "$@"