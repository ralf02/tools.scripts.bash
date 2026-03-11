#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: ./apagar.sh <minutos>"
    echo "Ejemplo: ./apagar.sh 180"
    exit 1
fi

MINUTOS=$1
SEGUNDOS=$((MINUTOS * 60))

echo "Esperando $SEGUNDOS segundos..."
sleep $SEGUNDOS

SSR_PID=$(pgrep -f simplescreenrecorder)

if [ -z "$SSR_PID" ]; then
    echo "SimpleScreenRecorder no está corriendo"
    exit 1
fi

echo "Deteniendo y guardando grabación..."
kill -SIGUSR2 $SSR_PID
wait $SSR_PID 2>/dev/null

echo "Esperando que SSR termine de escribir el archivo..."
while kill -0 $SSR_PID 2>/dev/null; do
    sleep 1
done

sync
sleep 3

# sudo apt install xdotool wmctrl
# wmctrl -a "SimpleScreenRecorder"
# sleep 0.5
# xdotool key --clearmodifiers Tab Tab Tab Tab Tab Tab Tab Tab Tab Tab Tab Tab Tab Tab Tab Tab Tab Return
