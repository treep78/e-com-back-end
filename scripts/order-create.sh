#!/bin/bash

#"[[product_id: '"'some_id'"',count: 3],[product_id: '"'some_id2'"',count: 7]]"
API="http://localhost:4741"
URL_PATH="/orders"
ORDER="{product_id: '"'some_id3'"', count: 2 },{product_id: '"'some_id4'"', count: 4 }"
TOKEN=qEOPTHI/EYrHc/dQhZ3llBE80xJjxNQFWHL4jYzLkeU=--WtqjWsv3CEppkiOLZ0o1guBCn0eQ1HTue/pD4eQvwrY=

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "order": {
      "items": "'"${ORDER}"'"
    }
  }'

echo
