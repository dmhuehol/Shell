#!/bin/bash

# Knit a folder of png files into a single mp4
read -p 'Enter output filename: ' vidName

ffmpeg -framerate 1 -pattern_type glob -i "*.png" -vcodec libx264 -s 1280x720 -pix_fmt yuv420p $vidName
