#!/bin/bash

status=`curl -s -o /dev/null -w "%{http_code}" $1`
if [[ "$status" == "200" ]]; then
  echo "success"
else
  echo "failure"
fi
