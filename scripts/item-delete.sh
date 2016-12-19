#!/bin/bash

API="http://localhost:4741"
URL_PATH="/items"
ID=58541434897b7958fdfa1c60
TOKEN=QcAJp6kH2DTYAzaQ/lziAPIIBUsleCQnXGeKiPnVffA=--N8mDQXWGV3PiKSVAJv+sx57jlc/afYxLZJaEA7XIfdk=

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
