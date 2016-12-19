#!/bin/bash
TOKEN=qEOPTHI/EYrHc/dQhZ3llBE80xJjxNQFWHL4jYzLkeU=--WtqjWsv3CEppkiOLZ0o1guBCn0eQ1HTue/pD4eQvwrY=

curl --include --request GET http://localhost:4741/orders \
  --header "Authorization: Token token=$TOKEN"
