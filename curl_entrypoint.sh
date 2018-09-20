#!/usr/bin/env sh
set -eo pipefail

curl $@ $SLACK_WEBHOOK_URL
