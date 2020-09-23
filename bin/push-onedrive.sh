#!/bin/bash

cd $HOME

echo "Copying files to online, possibly overwriting online changes..."
echo "Are you sure? [y/N]"
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo "Last chance! 15 seconds before it commences!"
  sleep 15
  rclone --progress --transfers=64 copy OneDrive onedrive:
fi
