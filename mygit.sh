#!/bin/sh


echo "**********    Here is my Updated program    ***********"
read -p "Which would you like to run, pull and push? [pl|ph] : " pl_or_ph

if [ "$pl_or_ph" = "pl" ] || [ "$pl_or_ph" = "pull" ]; then

    #git clean
    git fetch
    git merge

    read -p "Are you sure to copy git files to local for comitting? [y|n] :" yn

    if [ "$yn" = "y" ] || [ "$yn" = "Y" ]; then
         bash $HOME/src/misc/myconfig/xmyconfig.sh push $HOME/src/misc/myconfig
    elif [ "n" = "$yn" ] || [ "N" = "$yn" ]; then
        echo "Skipping to copy git files to local."
    else
        echo "Please input yes or not. [y|n] (Case-insensitive): "
        exit 1
    fi

elif [ "$pl_or_ph" = "ph" ] || [ "$pl_or_ph" = "push" ]; then

    read -p "Are you sure to copy your local files to here for comitting [y|n] :? " yn

    if [ "$yn" = "y" ] || [ "$yn" = "Y" ]; then
         bash $HOME/src/misc/myconfig/xmyconfig.sh pull $HOME/src/misc/myconfig
    elif [ "n" = "$yn" ] || [ "N" = "$yn" ]; then
        echo "Skipping to copy your local files to here."
    else
        echo "Please input yes or not. [y|n] (Case-insensitive): "
        exit 1
    fi

    read -p "Please input files to be commted.: " files
    read -p "Please input a message for commiting: " message
    echo $message

    git commit $files -m $message
    git push origin

fi
