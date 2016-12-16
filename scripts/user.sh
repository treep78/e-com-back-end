#!/bin/bash
ID=5853fc9ed7c86b252c8d9c01
TOKEN=RBBHIFi5PAD/Ihz6hKOPLmQUgPgfJD9QZf6M/+LgeyU=--WVV0LktNEnt8vwOyRNdEw4Yd2fT/w9cp2NIfiPX/lWU=

curl --include --request GET http://localhost:4741/users/$ID \
  --header "Authorization: Token token=$TOKEN"
