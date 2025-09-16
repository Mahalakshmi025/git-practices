#!/bin/bash

SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14} #if $3 is empty, default is 14 days
TIME_STAMP=$(date +%Y-%m-%d-%H-%M-%S)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USAGE(){
    echo -e "$R USAGE: $N sh 19-backup.sh <source> <destination> <days(optional)"

}


#check the source & destination are provided
#if args are lessthan 2
if [ $# -lt 2 ]
then
   USAGE
#    exit 1
 fi

if [ ! -d $SOURCE_DIR ]
then
   echo "$SOURCE_DIR does not exist...please check"
fi

if [ ! -d $DEST_DIR ]
then
   echo "$DEST_DIR does not exist...please check"
fi

FILES=$(find ${SOURCE_DIR} -name "*.log" -mtime +14)
echo "Files: $FILES"

# if [ ! -z $FILES ] #true if FILES is empty, ! makes it expression false
# then
#      echo "Files are found"
#      ZIP_FILE="$DEST_DIR/app-logs-$TIMESTAMP.zip"
#      find $(SOURCE_DIR) -name

if [ -n $FILES ]
then
   echo "files r found"
else
   echo "no files are older thay $DAYS"
fi

