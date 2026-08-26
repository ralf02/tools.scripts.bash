#!/bin/bash

# ffmpeg -i entrada.mp3 -ss 00:00:10 -to 00:00:50 -c copy salida.mp3

cd /tmp
rm -rf short_$1

ffmpeg -i $1 -ss $2 -to $3 -c:a libmp3lame short_$1
