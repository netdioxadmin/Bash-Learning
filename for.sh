#!/usr/bin/env bash 

for i in {1..100}
do
    echo "$i"
done

# Another Version

for (( n=100;n<=200;n++ ))
do
    echo $n
done