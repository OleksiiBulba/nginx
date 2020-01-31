#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

docker-compose up -d

nginx_exec make check-ready -f /usr/local/bin/actions.mk



docker-compose down