#!/bin/sh

if [[ -z "${PAYLOAD}" ]]; then
  echo $PAYLOAD
  DATA=$(echo $PAYLOAD | base64 -d | gunzip)
  echo $DATA | jq -r > /run.sh
  chmod +x /run.sh
  /run.sh
else
  echo 'No payload given'
fi
