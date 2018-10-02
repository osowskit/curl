#!/usr/bin/env sh

PAYLOAD="{\"request\": { \"branch\":\"$GITHUB_REF\"}}"

NWO=$(echo "$GITHUB_REPOSITORY" | sed 's/\//%2f/')
COMMAND="-s -X POST \
   -H 'Content-Type: application/json' \
   -H 'Accept: application/json' \
   -H 'Travis-API-Version: 3' \
   -H 'Authorization: token $TRAVIS_TOKEN' \
   -d '$PAYLOAD' \
   https://api.travis-ci.com/repo/$NWO/requests"
echo "$COMMAND"
eval curl "$COMMAND"
