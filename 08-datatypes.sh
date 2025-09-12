#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1 + $NUMBER2))

echo "Total of $NUMBER1 and $NUMBER2 is: $SUM"

# Results

# CASE-1: sh 08-datatypes.sh 10 20
#         Total of 10 and 20 is: 30

#  CASE-2: sh 08-datatypes.sh 10 maha
#          Total of 10 and maha is: 10

# CASE-3: sh 08-datatypes.sh maha 10
#         Total of maha and 10 is: 10

# CASE-4: sh 08-datatypes.sh maha abc
#         Total of maha and abc is: 0


#CASE-5:  SUM=$(($NUMBER1+$NUMBER2)) 
#if we run like this we get output 
#          sh 08-datatypes.sh 10 20
#          08-datatypes.sh: line 6: +: syntax error: operand expected (error token is "+")

