#!/usr/bin/env bash 
# brace expansion 
for i in {1..100}
do
    echo "$i"
done

# Another Version Arithemetic Evaluation 

for (( n=100;n<=200;n++ ))
do
    echo $n
done

# Expanding With Paramater expansion 

declare -a fruits=("apple" "banana" "cherry")

for i in ${fruits[@]}
do
    echo "Today we have $i"
done

# Command Substitution

for d in $(ls)
do 
echo "$d"
done