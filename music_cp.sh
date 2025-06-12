#!/bin/bash

array=("3. MicroSD Crossover" "1. ORIGINAL DEL PAISA" "2. CDs Jessica")
aux=1

for element in "${array[@]}"
do
    # find /home/rafiko/Music/"$element" -name "*.mp3" | wc -l
	
    mapfile -t files < <(find "/home/rafiko/Music/$element" -name "*.mp3")

    for music in "${files[@]}"
    do
        # Obtiene el directorio y el nombre del archivo
        dir=$(dirname "$music")
        filename=$(basename "$music")
        
        # Genera el nuevo nombre con el valor de aux
        new_filename="${aux} --$filename"
        new_filepath="/home/rafiko/Music/music-all/$new_filename"

        # Copia el archivo
        cp -r "$music" "$new_filepath"
        echo "Copiado: $music -> $new_filepath"
		
        # Incrementa el contador
        aux=$((aux + 1))
    done
done

echo "Total de archivos encontrados: $aux"