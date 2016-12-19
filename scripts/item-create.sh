#!/bin/bash

API="http://localhost:4741"
URL_PATH="/items"
PRODUCT_ID="Here'sAnId"
COUNT=6
TOKEN=hsYw39jWS4g5AaL0RJkpLTzb7k0tMT5eFvS9TPDEsb4=--T6Ld01AHmcz3voChaH3aMOhRVaYu+80xmCL3qOcGans=

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "item": {
      "product_id": "'"${PRODUCT_ID}"'",
      "count": "'"${COUNT}"'"
    }
  }'

echo
