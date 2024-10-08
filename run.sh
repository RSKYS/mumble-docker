#!/bin/bash

if [ -d "$(pwd)/data" ]; then
    chown -R 10000:10000 data
else
    echo "\n\
    Hmm, we're probably not in right location..\n\
    Are you sure murmur docker stuffs are here?\n"

    exit 1
fi

if command -v docker-compose > /dev/null 2>&1 \
                    && [ -f "$(pwd)/Dockerfile" ] \
                && [ -f "$(pwd)/docker-compose.yml" ]; then
    docker-compose down || true
    docker-compose build --no-cache
    docker-compose up --build --force-recreate -d
else
    echo "\n\
    Where's docker-compose?\n\
    Install it first and come back later.\n"

    exit 1
fi
