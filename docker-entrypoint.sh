#!/bin/sh

set -ex
npm install
$(npm bin)/nuxt

exec "$@"