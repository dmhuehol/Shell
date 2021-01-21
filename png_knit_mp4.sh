#!/bin/bash

# Knit a folder of png files into a single mp4
ffmpeg -framerate 1 -pattern_type glob -i "*.png" -vcodec libx264 -s 1280x720 -pix_fmt yuv420p vidName.mp4
