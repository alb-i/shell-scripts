#!/bin/bash

cd $HOME

echo "Copying files from ~/OneDrive/$1 to online, possibly overwriting online changes..."
echo "Are you sure? [y/N]"
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo "Last chance! 15 seconds before it commences!"
  sleep 15
  rclone --progress --transfers=64 copy "OneDrive/$1" "onedrive:$1"
fi
