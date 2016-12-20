#!/bin/bash
TOKEN=p3Va+8nzjhaKGPlLv52SlhJGyrP7Q4e8oWjk8MZLpK4=--CArvl4HMOjESvmhVifwf/OjFWZNWZkLsKyl8a00ssgI=

curl --include --request GET https://gentle-hamlet-35507.herokuapp.com/items \
  --header "Authorization: Token token=$TOKEN"
