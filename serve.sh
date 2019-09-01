#!/bin/bash
FILE=functions/.runtimeconfig.json

if [[ ! -f "$FILE" ]]; then
    firebase functions:config:get > "$FILE"
fi
FUNCTIONS_BASE_URL='http://localhost:5001/account-5d91d/us-central1' firebase serve
