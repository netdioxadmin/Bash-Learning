#!/usr/bin/env bash
echo "Which animal"
select animal in "cat" "dog" "bird" "fish"
do
echo " You selected $animal"
break
done

#another example
echo "Which animal"
select animal in "cat" "dog" "bird" "fish" "quit"
do
    case $animal in
        cat) echo "Cat likes to sleep";break;; # Break after selection 
        dog) echo "Dog like to play";;
        bird) echo " Birds like to fly";;
        fish) echo "Fish like to swim";;
        quit) break;;
        *) echo "Hey what is this"
    esac
done