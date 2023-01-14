#!/bin/bash

# Place your code here!

chars=( {a..z} )
for ((i=0; i<$1; i++))
do
  mkdir -p "folder_${chars[i]}"
done

if [[ $1 == 1 ]] 
then 
    echo -n "$1 folder created: "
else
    echo -n "$1 folders created: "
fi


for ((i=0; i<$1; i++)); do
  echo -n "folder_${chars[i]}"
  if [ $i -lt $(($1-1)) ]; then
    echo -n ", "
  fi
done
printf "\n"
