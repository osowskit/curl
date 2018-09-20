#!/usr/bin/env sh

COMMAND="-X POST -H 'Content-type: application/json' --data '{\"text\":\"Success! $* \"}' $SLACK_WEBHOOK_URL"
eval curl "$COMMAND"
