#!/bin/bash

BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
# write your code here
ISAY=$BUFFETT
VARIABLE2=${BUFFETT/snow/foot}
ISAY=${VARIABLE2}
VARIABLE2=${ISAY[0]// snow/}
ISAY=${VARIABLE2}
VARIABLE2=${ISAY[@]/finding/getting}
ISAY=${VARIABLE2}

SUBSTRINGWET="w"

INDEXOFWET=`expr index "$ISAY" "$SUBSTRINGWET"`
#echo $INDEXOFWET
TODELETE=${ISAY[@]:($INDEXOFWET+2)}
#echo $TODELETE
VARIABLE2=${ISAY[@]// $TODELETE/}
ISAY=${VARIABLE2}











# Test code - do not modify
echo "Warren Buffett said:"
echo $BUFFETT
echo "and I say:"
echo $ISAY
