#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "Please runthis script with root privilages"
   exit 1
fi

#This is validate function to check git installed or not
VALIDATE(){
    if [ $1 -ne 0 ]
    then 
       echo "$2 is ..... failed"
       exit 1
    else
       echo "$2 is ..... success"
    fi
}

dnf list installed git

if [ $? -ne 0 ]
then
   echo "git is not installed, going to install it..."
   dnf install git -y
   VALIDATE $? "Installing Git"
else
   echo "git is already installed, nothing to do.."
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
   echo "mysql is not installed, going to install it..."
   dnf install mysql -y
   VALIDATE $? "Installing MYSql"
else
   echo "Mysql is already installed, nothing to do.."
fi