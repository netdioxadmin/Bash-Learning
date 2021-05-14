#!/usr/bin/env bash
# Defining a function

greet() {
        echo "Hi"
}
greet

# Calling function with an argument
# Here $1 repersent the first argument Passed The other argument can follow that 

greet() {
        echo "Hi $1."
}
greet Scott

# Calling function with an two argument
greet() {
        echo "Hi $1. How is $2"
}
greet Scott charle

#$@ represents the list of arguments give to a function.
#$FUNCNAME represent the name of the function
# Writing a code to explain this

number(){
    declare -i n=1
    for f in $@; do
        echo "$n:$f"
        (( n += 1))
    done
    echo " The name of the function is $FUNCNAME"
}
number $(ls /)
# Calling the fun tion with another argument 
echo -e "Another Call \n "

number apple orage dog cat pine

# Displaying Function name 

## All variable in bash are global But variable declared inside a function is called Local variable. Local variables
# are used to avoid problem where stored values are inadvertently change

# Set to Explain Variable

var1="I am variable one"

varfun(){
    var2="I am variable two"
    local var3="I am variable3"
}
varfun
echo $var1
echo $var2
echo $var3