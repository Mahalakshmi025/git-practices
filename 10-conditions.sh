#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 20 ] # gt -> greaterthan, lt -> lessthan, eq -> equal, -ne -> notequal
then

  echo "Given number: $NUMBER is >20"

else

  echo "Given number: $NUMBER is <20"

fi

# RESULT: sh 10-conditions.sh 19
#         Given number: 19 is <20
