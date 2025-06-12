#!/bin/bash


#SOURCE_PATH="/home/rafiko/Videos/6. CROSSOVER SELECTIVO VIDEOS 2022"   
#TARGET_PATH="/home/rafiko/Music/music-all"

SOURCE_PATH=/tmp
TARGET_PATH="/home/rafiko/Videos/newsVideos"

mapfile -t files < <(find "$SOURCE_PATH" -name "*.mp4")

for video in "${files[@]}"
do
    # Obtiene el directorio y el nombre del archivo
    dir=$(dirname "$video")
    filename=$(basename "$video" .mp4)
    
    # Genera el nuevo nombre con el valor de aux
    new_filename="~ 0 $filename.divx"
    new_filepath="$TARGET_PATH/$new_filename"

    # transcodificacion
    #ffmpeg -i "$video" -c:v mpeg4 -vtag DX50 -profile:v 0 -q:v 10 -r 24 -b:v 940k -s 720x406 -c:a mp3 -b:a 192k -ar 48000 -f avi "$new_filepath"
    
    ffmpeg -y -i "$video" -c:v mpeg4 -vtag DX50 -profile:v 0 -q:v 9 -r 24 -b:v 800k -s 720x406 -c:a mp3 -b:a 128k -ar 48000 -f avi "$new_filepath"
    myTIME=$(date)
    #touch -a -m -t $myTIME $new_filepath
    echo "Transcodificado: $video -> $new_filepath -> date: $myTIME"
        
    # Incrementa el contador
    aux=$((aux + 1))
done


echo "Total de archivos encontrados: $aux -> date: $myTIME"