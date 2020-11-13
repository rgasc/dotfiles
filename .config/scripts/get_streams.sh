#!/bin/sh

client_id=$(jq -r '.twitch.client_id' ~/.config/scripts/api_keys.json)
authorization=$(jq -r '.twitch.authorization' ~/.config/scripts/api_keys.json)

curl -sH 'Accept: application/vnd.twitchtv.v5+json' \
-H 'Client-ID: '"$client_id"'' \
-H 'Authorization: OAuth '"$authorization"'' \
-X GET 'https://api.twitch.tv/kraken/streams/followed'\
| jq -r '.streams[] | .channel.display_name, .viewers, .game' | sed '0~3 s/$/\n_____________\n/g'
