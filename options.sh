#!/usr/bin/env bash
while getopts u:p: option; do
    case $option in
        u) user=$OPTARG;;
        p) pass=$OPTARG;;
    esac
done

echo "user: $user / Pass: $pass"
#another option 
while getopts u:p:ab option1; do
    case $option1 in
        u) user=$OPTARG;;
        p) pass=$OPTARG;;
        a) echo "got the A flag";;
        b) echo "got the B flat" ;;
    esac
done

echo "user: $user / Pass: $pass"