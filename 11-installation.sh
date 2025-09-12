#!/bin/bash

# $? -> it will tell u the state of previous command
# 0 -> success
# 1-127 -> failure

USERID=$(id-u)
echo "$USERID"

# if [ $USERID -ne 0 ]
# then
#    echo "please run this script with root priveleges"
#    exit 1