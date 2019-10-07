#!/bin/sh

set -ex
# Checks if node_modules exists and run [npm ci](https://docs.npmjs.com/cli/ci.html)
[ ! -d "node_modules" ] && npm ci
$(npm bin)/nuxt

exec "$@"