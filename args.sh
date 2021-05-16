#!/usr/bin/env bash
# $0 represents the script name it self and $1 the first argument

echo "In $0 the argument is $1"

# giving any no of argiments 
for i in $@
do 
    echo $i
done

# To display the no of arguments.
echo "There were $# arguments"