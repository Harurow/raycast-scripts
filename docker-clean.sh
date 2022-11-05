#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Docker clean
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Developer Utils

# Documentation:
# @raycast.description コンテナの全停止とイメージ全削除
# @raycast.author www.harurow
# @raycast.authorURL http://github.com/harurow

docker stop $(docker ps -q) 2>/dev/null
docker rmi $(docker images -q) -f 2>/dev/null
