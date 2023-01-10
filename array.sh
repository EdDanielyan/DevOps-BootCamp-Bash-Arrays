#!/bin/bash

# Place your code here

chars=( {a..z} )
for ((i=0; i<$1; i++))
do
  mkdir -p "file_${chars[i]}"
done

if [[ $1 == 1 ]] 
then 
    echo -n "$1 folder created: "
else
    echo -n "$1 folders created: "
fi

for ((i=0; i<$1; i++))
do
  ls -d "file_${chars[i]}" | tr "\n" ", " | sed 's/,/, /'
done | sed 's/. $//' 
printf "\n"
