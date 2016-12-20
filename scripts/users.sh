#!/bin/bash
TOKEN=hsYw39jWS4g5AaL0RJkpLTzb7k0tMT5eFvS9TPDEsb4=--T6Ld01AHmcz3voChaH3aMOhRVaYu+80xmCL3qOcGans=

curl --include --request GET https://gentle-hamlet-35507.herokuapp.com/users \
  --header "Authorization: Token token=$TOKEN"
