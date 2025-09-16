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
   exit 1
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


if [ ! -z $FILES ]
then
   echo "files r found"
   ZIP_FILE="$DEST_DIR/app-logs-$TIMESTAMP.zip"
   find ${SOURCE_DIR} -name "*.log" -mtime +14 | zip "$ZIP_FILE" -@

   #check if zip file successfully created or not
   if [ -f $ZIP_FILE ]
   then
      echo "successfully zipped the files older than $DAYS"

      #removing the files after zipping
      while IFS= read -r file #IFS,internal field seperatpor, empty it will ignore while space.-r is for not to ingore special charecters like /
      do
        echo "Deleting file: $file"
        rm -rf $file
      done <<< $FILES
    else
    echo "zipping the files failed"
    exit 1
    fi
else
   echo "no files are older thay $DAYS"
fi

