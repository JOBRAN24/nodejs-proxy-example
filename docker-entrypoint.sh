#!/bin/sh
set -e

echo "Starting Node.js application with NODE_ENV=${NODE_ENV:-production}"

npm ci

exec npm run ${NODE_ENV:-production}
exec docker-php-entrypoint "$@"