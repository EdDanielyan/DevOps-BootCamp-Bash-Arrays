#!/bin/bash

# Place your code here!

chars=( {e..a} )
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

for ((i=0; i<$1; i++))
do
  ls -d "folder_${chars[i]}" | tr "\n" ", " | sed 's/,/, /'
done | sed 's/. $//' 
printf "\n"
