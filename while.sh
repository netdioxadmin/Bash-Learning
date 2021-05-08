#!/usr/bin/env bash

echo "While loop"

declare -i a=0

while (( a < 10 ))
do 
    echo "a:$a"
    (( a++ ))
done