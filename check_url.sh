#!/bin/bash

$status = 'curl -s -o /dev/null -w "%{http_code}" $1'
echo $status
if [[ "$status" == "200" ]]; then
  echo "Success"
else
  echo "Failed"
fi
