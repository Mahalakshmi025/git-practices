#!/bin/bash

set -e #setting the automatic exit , if weget error
#set -ex #debug mode

failure(){

     echo "Failed at: $1:$2"
}

trap 'failure "${LINENO}" "$BASH_COMMAND" ' ERR #ERR is the error signal
echo "Hello world"
echooo "hello world failure"
echo "heloo world failure"
