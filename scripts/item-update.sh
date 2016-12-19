#!/bin/bash

API="http://localhost:4741"
URL_PATH="/items"
COUNT=2
ID=58544387b817e972468c5bc3
TOKEN=hsYw39jWS4g5AaL0RJkpLTzb7k0tMT5eFvS9TPDEsb4=--T6Ld01AHmcz3voChaH3aMOhRVaYu+80xmCL3qOcGans=

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "item": {
      "count": "'"${COUNT}"'",
    }
  }'

echo
