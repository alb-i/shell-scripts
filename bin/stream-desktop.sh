#!/bin/bash

if ! [ -e /dev/video2 ] ; then
	sudo insmod /lib/modules/$(uname -r)/updates/dkms/v4l2loopback.ko devices=1 video_nr=2 exclusive_caps=1
fi

#ffmpeg -f x11grab -r 15 -s 3840x2160 -i :0.0+0,2160 -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 -vf 'scale=640:360' /dev/video2

ffmpeg -f x11grab -r 15 -s 3840x2160 -i :0.0+0,2160 -video_size 1280x720 -vcodec rawvideo -pix_fmt yuyv422 -threads 0 -f v4l2 /dev/video2
