#!/usr/bin/env bash
# case check a value with predifiend checks

animal="dog"
case $animal in
    cat) echo "poocha";;
    dog|puppy) echo "patti";;
    *) echo "onnum illa";;
esac   

# two ;; is important, it says that we are done with that condition 
#esac is used to close the case statement. 