#!/usr/bin/env bash

echo "Until Loop"

declare -i m=0
until(( m==10 ))
do
    echo "m:$m"
    (( m++ ))
    sleep 2
done
