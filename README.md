# Conversión y Optimización de Videos para Reproductores Compatibles con DivX | Utilizatarios en bash

Este proyecto tiene scripts para el análisis, conversión y optimización de archivos de video (`.mp4`) a un formato compatible con radios que leen archivos `.divx`, como el BV9967B, utilizando herramientas de línea de comandos en Linux.

## Objetivos

- Convertir archivos `.mp4` a `.divx` manteniendo la compatibilidad con reproductores específicos.
- Preservar nombres de archivos correctamente durante el copiado y renombramiento.
- Automatizar el proceso de copiado y renombramiento secuencial de archivos `.mp3`.
- Establecer fechas de creación/modificación en archivos.
- Optimizar el peso de los archivos resultantes sin perder compatibilidad.
- Listar y ordenar archivos por nombre o número desde terminal.
- Reinicio controlado de wowza
- Eliminar versiones antiguas de paquetes Snap que están deshabilitadas y ya no están en uso, liberando espacio en el sistema.

## Herramientas utilizadas

- `ffmpeg`: conversión de video.
- `bash`: scripting automatizado.
- `tree`, `ls`, `sort`: organización y visualización de archivos.
- `touch`, `debugfs`: manipulación de fechas en archivos en ext4.
- `find`, `basename`, `dirname`: búsqueda y manipulación de rutas.

## Recomendaciones

- Usar -q:v con valores entre 5 y 12 para balancear peso/calidad.
- Validar resolución máxima soportada por el reproductor (se recomienda 640x360).
- Evitar extensiones `.avi` si el radio solo reconoce `.divx`.
- Para radios que no permiten lectura de `.txt` o búsqueda, convertir contenido a audio o formatos visuales compatibles.
- Eso de cron job para el script `wowza-restart.sh`
- El script `clean_snap.sh` elimina las versiones antiguas de paquetes Snap que están deshabilitadas y ya no están en uso
