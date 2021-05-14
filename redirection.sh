#!/usr/bin/env bash

# Inserting to a file
for i in {1..10}
do 
    echo "This line is $i" > ~/read.txt
done

# Appent to a file

for i in {1..10}
do 
    echo "This line is $i" >> ~/app.txt
done

# Reading Input for a file
while read name
do
   echo "Hi $name, How are you"
done < ~/name.txt