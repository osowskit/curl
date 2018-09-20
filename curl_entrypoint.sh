#!/usr/bin/env sh
set -eo pipefail

curl -X POST -H 'Content-type: application/json' --data '{"text":"Allow me to reintroduce myself"}' "$SLACK_WEBHOOK_URL"
