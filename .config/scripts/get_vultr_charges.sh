#!/bin/sh

api_key=$(jq -r '.vultr.api_key' ~/.config/scripts/api_keys.json)

curl -sH 'API-Key: '$api_key https://api.vultr.com/v1/account/info | jq -r '.pending_charges'
