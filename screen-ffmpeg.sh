#!/bin/bash

DURATION=${1:-2}

# Obtener resolución
RESOLUTION=$(xrandr | grep '*' | head -n1 | awk '{print $1}')

WIDTH=$(echo $RESOLUTION | cut -d'x' -f1)
HEIGHT=$(echo $RESOLUTION | cut -d'x' -f2)

OUTPUT="$HOME/Videos/byzanz_ffmpeg_$(date +%Y%m%d_%H%M%S).webp"

ffmpeg \
-f x11grab \
-video_size ${WIDTH}x${HEIGHT} \
-framerate 5 \
-i $DISPLAY \
-t $DURATION \
-loop 0 \
-quality 50 \
-compression_level 1 \
"$OUTPUT"

echo "$OUTPUT"
