#!/bin/sh

echo "**********    Here is my Updated program    ***********"
read -p "Which would you like to run, pull and push? [pl|ph] : " pl_or_ph

if [ "$pl_or_ph" = "pl" ] || [ "$pl_or_ph" = "pull" ]; then

    #git clean
    git fetch
    git merge

elif [ "$pl_or_ph" = "ph" ] || [ "$pl_or_ph" = "push" ]; then

    git add Euler/*.py

    read -p "Please input a Euler program number for commiting: " number

    git commit -m "Euler Program #$number"
    git push

fi
