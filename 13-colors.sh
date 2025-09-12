#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

CHECK_ROOT() {
    if [ $USERID -ne 0 ]
    then
       echo "Please run this script with root priveleges"
       exit 1
    fi
}

VALIDATE() {
    if [ $1 -ne 0 ]
    then
       echo "$2 is ....$R FAILED $N"
    else 
       echo "$2 is ....$G SUCCESS $N"
    fi
}

CHECK_ROOT

dnf list installed git

if [ $? -ne 0 ]
then
   echo "Git is not installed, going to install it..."
   dnf install git -y
   VALIDATE $? "INSTALING GIT"
else
   echo "Git is already installed..Nothing to do ..."
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
   echo "MysQL is not installed, going to install it..."
   dnf install mysql -y
   VALIDATE $? "INSTALING MySQL"
else
   echo "Mysql is already installed..Nothing to do ..."
fi

