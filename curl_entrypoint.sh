#!/usr/bin/env sh

PAYLOAD="{\"request\": { \"branch\":\"$GITHUB_REF\"}}"

COMMAND="-s -X POST \
   -H 'Content-Type: application/json' \
   -H 'Accept: application/json' \
   -H 'Travis-API-Version: 3' \
   -H 'Authorization: token $TRAVIS_TOKEN' \
   -d '$PAYLOAD' \
   https://api.travis-ci.com/repo/$GITHUB_REPOSITORY/requests"

eval curl "$COMMAND"
