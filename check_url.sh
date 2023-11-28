#!/bin/bash

status=`curl -s -o /dev/null -w "%{http_code}" $1`
if [[ "$status" == "200" ]]; then
  echo "Success"
else
  echo "Failed"
fi
