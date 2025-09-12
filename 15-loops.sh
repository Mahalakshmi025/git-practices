#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

CHECK_ROOT() {
    if [ $USERID -ne 0 ]
    then
       echo -e "$R Please run this script with root preveleges.."
       exit 1
    fi
}

VALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo -e "$2 is...$R FAILED $N"
       exit 1
    else
       echo -e "$2 is...$G SUCCESS $N"
    fi
}

CHECK_ROOT

# sudo sh 15-loops.sh mysql postfix nginx
for package in $@ #$@ refers to all arguments passed to it
do 
  dnf list installed $package

  if [ $? -ne 0 ]
  then
     echo -e "$Y $package is not installed, going to install it"
     dnf install $package -y
     VALIDATE $? "Installing $package"
  else
     echo -e "$G $package is already installed, nothing to do.."
  fi
done