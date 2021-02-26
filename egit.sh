#!/bin/sh

echo "**********    Here is my Updated program    ***********"
read -p "Which would you like to run, pull and push? [pl|ph] : " pl_or_ph

if [ "$pl_or_ph" = "pl" ] || [ "$pl_or_ph" = "pull" ]; then

    #git clean
    git fetch
    git merge

elif [ "$pl_or_ph" = "ph" ] || [ "$pl_or_ph" = "push" ]; then

    git add Euler/*.py
    git commit $files -m $message
    git push origin

fi
