#!/bin/bash

# Duración de grabación en segundos (por defecto 2)
DURATION=${1:-2}

# Obtener resolución completa de la pantalla principal
SCREEN_INFO=$(xdpyinfo | awk '/dimensions:/ {print $2}')
WIDTH=$(echo "$SCREEN_INFO" | cut -d'x' -f1)
HEIGHT=$(echo "$SCREEN_INFO" | cut -d'x' -f2)

OUTPUT="$HOME/Videos/byzanz_$(date +%Y%m%d_%H%M%S).gif"

byzanz-record \
  -d "$DURATION" \
  -x 0 \
  -y 0 \
  -w "$WIDTH" \
  -h "$HEIGHT" \
  "$OUTPUT"

echo "$OUTPUT"
