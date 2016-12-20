#!/bin/bash

API="https://gentle-hamlet-35507.herokuapp.com"
URL_PATH="/sign-in"
EMAIL="jain@said.com"
PASSWORD="jane"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

echo
