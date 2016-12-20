#!/bin/bash

API="https://gentle-hamlet-35507.herokuapp.com"
URL_PATH="/items"
PRODUCT_ID="Here'sAnId"
COUNT=6
PRICE=1000
NAME="TEST ITEM"
DESCRIPTION="Product description test"
IMAGE="google.com"
TOKEN=p3Va+8nzjhaKGPlLv52SlhJGyrP7Q4e8oWjk8MZLpK4=--CArvl4HMOjESvmhVifwf/OjFWZNWZkLsKyl8a00ssgI=

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "item": {
      "name": "'"${NAME}"'",
      "price": "'"${PRICE}"'",
      "description": "'"${DESCRIPTION}"'",
      "image": "'"${IMAGE}"'",
      "count": "'"${COUNT}"'",
      "product_id": "'"${PRODUCT_ID}"'"
    }
  }'

echo
