#!/bin/bash

# Place your code here

chars=( {a..z} )
for ((i=0; i<$1; i++))
do
  mkdir "folder_${chars[i]}"
done

if [[ $1 == 1 ]] 
then 
    echo -n "$1 folder created: "
else
    echo -n "$1 folders created: "
    ls -d folder_*  | tr ":\n" "," | sed 's/. $//'
fi
