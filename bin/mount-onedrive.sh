#!/bin/bash

echo "Press CTRL+C to unmount..."

rclone --vfs-cache-mode writes mount "onedrive": ~/OneDrive.online
