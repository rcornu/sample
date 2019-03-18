#!/bin/sh

if test -z "$PAYLOAD"; then
  echo 'No payload given'
else
  echo $PAYLOAD
  DATA=$(echo $PAYLOAD | base64 -d | gunzip)
  echo $DATA | jq -r > /run.sh
  chmod +x /run.sh
  /run.sh

fi
