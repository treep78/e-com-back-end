#!/bin/bash
TOKEN=RBBHIFi5PAD/Ihz6hKOPLmQUgPgfJD9QZf6M/+LgeyU=--WVV0LktNEnt8vwOyRNdEw4Yd2fT/w9cp2NIfiPX/lWU=

curl --include --request GET http://localhost:4741/users \
  --header "Authorization: Token token=$TOKEN"
