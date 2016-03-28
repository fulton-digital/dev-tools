#!/bin/bash

# An example filter stream used for converting a video. Crops the video,
# then splits into multiple streams in different video formats for maximum
# compatibility, with customized bitrates for each.

rm hand-vp9.webm hand.webm hand.mp4 output.mp4; \
ffmpeg -i hand_3.mov -filter_complex "[v:0]crop=800:832:0:0,split=3[out1][out2][out3]" \
      -map '[out1]' -c:v libvpx-vp9 -b:v .5M -an hand-vp9.webm \
      -map '[out2]' -c:v libvpx -b:v .75M -an hand.webm \
      -map '[out3]' -c:v libx264 -b:v 1M -an hand.mp4

# Example html tag for output videos
# <video autoplay loop>
#   <source src="./assets/video/rw-vp9.webm" type="video/webm;codecs=vp9">
#   <source src="./assets/video/rw.webm" type="video/webm;codecs=vp8">
#   <source src="./assets/video/rw.mp4" type="video/mp4">
# </video>
