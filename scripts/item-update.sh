#!/bin/bash

API="http://localhost:4741"
URL_PATH="/items"
COUNT=2
ID=58544387b817e972468c5bc3
TOKEN=UmoNMDOmJ0VuJg7SSS5OWOuRj2agkWKzylRRWXmoxmQ=--q07k3oIscAV+kPH/JmCGk1+eOUrODMisaLc2esIrLHs=

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
