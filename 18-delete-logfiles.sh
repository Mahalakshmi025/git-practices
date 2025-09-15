#!/bin/bash

SOURCE_DIR=/home/ec2-user/logs

if [ -d $SOURCE_DIR ]
then 
   echo -e "$SOURCE_DIR $G EXISTS $N"
else
   echo -e "$SOURCE_DIR $R does not EXISTS $N"
   exit 1

fi 

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)
echo "Files: $FILES"

while IFS= read -r line #IFS, internal field seperation, empty it will ignore while space. 
                        #-r is for not ignore special chars like /

do 
 echo "Deleting line: $line"
 rm -rf $line

done <<< $FILES