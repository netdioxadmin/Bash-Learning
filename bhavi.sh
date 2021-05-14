#!/usr/bin/env bash

# A Prediction Game

echo -e "\t\t Welcome to the "
echo -e "\t\t \033[5m MyStIcAl SPhErE\033[0m"

waitnum=$(( 0 + $RANDOM %3 ))
mystnum=$(( 1+ $RANDOM %10 )) 

declare -a fortunes=(
    " You are lickely to achieve the outcome you seek"
    "Today is not a good day to do that"
    "While it might seem unlickely, your chances are good"
    " If you belove you will be successful,That is had the battle"
    "If you cared enopugh to ask, you care enough to make it happen"
    "I think you already know the answer to that."
    "Stop wondering and start doing"
)

case $waitnum in 
    0) sleep 1 ; echo "One moment please..."; sleep 1;;
    1) sleep 1 ; echo "Your fortune will be along shortly..."; sleep 2;;
    2) sleep 1 ; echo " Preparing your fate.." sleep 1;;
    3) sleep 1 ; echo " The veil of mystery is dark today.."; sleep 3;;
esac

echo $mystnum
echo ${fortunes[mystnum]}
echo