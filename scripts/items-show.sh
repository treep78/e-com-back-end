#!/bin/bash
TOKEN=UmoNMDOmJ0VuJg7SSS5OWOuRj2agkWKzylRRWXmoxmQ=--q07k3oIscAV+kPH/JmCGk1+eOUrODMisaLc2esIrLHs=

curl --include --request GET http://localhost:4741/items \
  --header "Authorization: Token token=$TOKEN"
