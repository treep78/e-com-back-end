#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-out"
ID=5853fc9ed7c86b252c8d9c01
TOKEN=RVuIVDmKv1kz/iOv9uYrFYfnS+rGyaH2oh5+0wcUna8=--hbAY9bh2ZYpB/cNO2DykfybkH03WLFnLYdUvl/+Babs=

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
