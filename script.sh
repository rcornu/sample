#!/bin/sh

DATA=$(echo $PAYLOAD | base64 -d | gunzip)
echo $DATA | jq -r > /run.sh
chmod +x /run.sh
/run.sh
