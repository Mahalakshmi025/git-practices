#!/bin/bash

NUMBER=$1

if[ $NUMBER -gt 20 ]
then
  echo "Given number: $NUMBER is >20"
else
  echo "Given number: $NUMBER is <20"
fi