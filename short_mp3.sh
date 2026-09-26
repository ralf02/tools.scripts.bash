#!/bin/bash

# CUT MP3
# ffmpeg -i entrada.mp3 -ss 00:00:10 -to 00:00:50 -c copy salida.mp3

# FADE OUT CON FFMPEG USANDO EL FILTRO DE AUDIO AFADE
# ffmpeg -i entrada.mp3 -af "afade=t=out:st=115:d=5" salida.mp3
# entrada.mp3: Especifica tu archivo de audio original.
# afade=t=out: Indica que el tipo de efecto (t) es un fundido de salida (out).
# st=115: Es el Start Time (tiempo de inicio). El fade out empezará en el segundo 115 (1 minuto y 55 segundos). Debes calcular este número restando la duración del fade al tiempo total de tu audio.
# d=5: Es la Duration (duración). El volumen tardará 5 segundos en bajar por completo hasta llegar a cero.

# CONVERT MPEG TO MP3
# ffmpeg -i jive.mpeg -vn -acodec libmp3lame -ab 192k -ar 44100 fadeout_short_jive_jive_jive_aces.mp3

cd /tmp
rm -rf short_$1

ffmpeg -i $1 -ss $2 -to $3 -c:a libmp3lame short_$1
