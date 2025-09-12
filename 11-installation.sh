#!/bin/bash

# $? -> it will tell u the state of previous command
# 0 -> success
# 1-127 -> failure

USERID=$(id -u)
echo "$USERID"

#OUTPUT: sh 11-installation.sh
#        1001

if [ $USERID -ne 0 ]
then
   echo "please run this script with root priveleges"
   exit 1
fi

dnf list installed git

if [ $? -ne 0 ]
then
   echo "git is not installed, going to install it..."
   dnf install git -y

   if [ $? -ne 0 ]
   then 
      echo "git installation is not success, check is"
      exit 
   else 
      echo "Git installation is success"
    fi
    
else
   echo " git is already installed, nothing to do"
fi
