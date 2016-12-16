#!/bin/bash

API="http://localhost:4741"
URL_PATH="/items"
PRODUCT_ID="some product ID"
COUNT=6
TOKEN=RBBHIFi5PAD/Ihz6hKOPLmQUgPgfJD9QZf6M/+LgeyU=--WVV0LktNEnt8vwOyRNdEw4Yd2fT/w9cp2NIfiPX/lWU=

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
