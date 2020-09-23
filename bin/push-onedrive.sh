#!/bin/sh

cd $HOME

echo "Copying files to online, possibly overwriting online changes..."
echo "..waiting for 15 secs"
sleep 15
echo "..starting.."

rclone --progress --transfers=64 copy OneDrive onedrive:
