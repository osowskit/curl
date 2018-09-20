#!/usr/bin/env sh
set -eo pipefail

echo "$@ $SLACK_WEBHOOK_URL"

curl "$@ $SLACK_WEBHOOK_URL"
