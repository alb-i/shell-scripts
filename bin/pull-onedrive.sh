#!/bin/bash

cd $HOME

echo "Copying files from online to ~/OneDrive/$1, possibly overwriting local changes..."
echo "Are you sure? [y/N]"
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo "Last chance! 15 seconds before it commences!"
  sleep 15
  rclone --progress --transfers=64 copy "onedrive:$1" "OneDrive/$1"
fi
