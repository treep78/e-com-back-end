#!/bin/bash
ID=58543b5b935ef56eb728550f
TOKEN=hsYw39jWS4g5AaL0RJkpLTzb7k0tMT5eFvS9TPDEsb4=--T6Ld01AHmcz3voChaH3aMOhRVaYu+80xmCL3qOcGans=

curl --include --request GET http://localhost:4741/items/$ID \
  --header "Authorization: Token token=$TOKEN"
