#!/bin/sh

read -p "Are you sure to copy your local files to here for comitting? " yn

if [ "$yn" = "y" ] || [ "$yn" = "Y" ]; then
     bash $HOME/src/misc/xmyconfig.sh pull $HOME/src/misc/myconfig
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

