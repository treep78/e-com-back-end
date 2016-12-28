#!/bin/bash

API="http://localhost:4741"
URL_PATH="/items"
COUNT=7
ID=58594c0755bbe8346f3d3101
TOKEN=0VjM2cpO+g4CO0olthuUP9YxCugulGx+L/06W/Lmnkc=--vGEpN3NKGNgazblqDA0V/niP9doqzmxxSZQTSFvMCfk=

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "item": {
      "count": "'"${COUNT}"'"
    }
  }'

echo
