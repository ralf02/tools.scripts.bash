#!/bin/bash

# array=("6. CROSSOVER SELECTIVO VIDEOS 2022 divx" "5. Hector VIDEOS CROSSOVER divx" "4. EL REY DE LOS CROSSOVER 2024 VIDEOS" "3. CROSSOVER VIEJO VIDEOS")
array=("7. CROSSOVER IMPACTO 2025")

aux=802

for element in "${array[@]}"
do
    mapfile -t files < <(find "/home/rafiko/Videos/$element" -name "*.divx")

    for file in "${files[@]}"
    do
        # Obtiene el directorio y el nombre del archivo
        dir=$(dirname "$file")
        filename=$(basename "$file")
        
        # Genera el nuevo nombre con el valor de aux
        new_filename="${aux} - $filename"
        new_filepath="/home/rafiko/Videos/videos-all-tmp/$new_filename"

        # Copia el archivo
        cp -r "$file" "$new_filepath"
        echo "Copiado: $file -> $new_filepath"
		
        # Incrementa el contador
        aux=$((aux + 1))
    done
done

echo "Total de archivos encontrados: $aux"