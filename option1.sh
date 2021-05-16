#!/usr/bin/env bash
#another option 
# here adding a coln ath the begining at u that is [:u:p:ab] like this tell bash that we want to know
# abut the flags that wewe used at command line that I havint specified in script. 
while getopts :u:p:ab option1; do
    case $option1 in
        u) user=$OPTARG;;
        p) pass=$OPTARG;;
        a) echo "got the A flag";;
        b) echo "got the B flag" ;;
        #adding ? to caputre thos flags
        ?) echo " I don't know what is $OPTARG is!";;
    esac
done

echo "user: $user / Pass: $pass"

