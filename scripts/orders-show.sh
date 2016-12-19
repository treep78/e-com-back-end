#!/bin/bash
TOKEN=3NyXAP9VE5ThsOCkhDzTqconXdkKDlv0q6XvsjRttxk=--X9emPMUC0hbgCkuB/3LyWXaNif9icgmhBATt7cyDxB4=

curl --include --request GET http://localhost:4741/orders \
  --header "Authorization: Token token=$TOKEN"
