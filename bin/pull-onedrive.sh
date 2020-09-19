#!/bin/sh

cd $HOME

echo "Copying files from online, possibly overwriting local changes..."
echo "..waiting for 15 secs"
sleep 15
echo "..starting.."

rclone --progress --transfers=64 copy onedrive: OneDrive
