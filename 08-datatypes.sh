#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1 + $NUMBER2))

echo "Total of $NUMBER1 and $NUMBER2 is: $SUM"

# Results

#  sh 08-datatypes.sh 10 20
# Total of 10 and 20 is: 30

# SUM=$(($NUMBER1+$NUMBER2)) if we run like this we get output 
#  sh 08-datatypes.sh 10 20
# 08-datatypes.sh: line 6: +: syntax error: operand expected (error token is "+")

