#!/bin/bash

CHANNEL=$1

streamlink -Qp mpv https://www.twitch.tv/$CHANNEL best &
firefox --new-window https://www.twitch.tv/popout/$CHANNEL/chat?popout=
