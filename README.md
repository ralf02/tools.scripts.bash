# Mi Colección personal de Scripts

Mi Colección es un conjunto de herramientas escritas en Bash para automatizar tareas comunes de conversión de medios, captura de pantalla y mantenimiento del sistema en entornos Linux.

## Requisitos Previos

Para asegurar el correcto funcionamiento de todos los scripts, es necesario contar con las siguientes herramientas instaladas en el sistema:

- **Bash**: Intérprete de comandos estándar.
- **ffmpeg**: Para el procesamiento y conversión de audio y video.
- **byzanz**: Para la creación de GIFs animados de la pantalla.
- **Herramientas estándar de Linux**: `coreutils` (ls, cp, rm, etc.).

## Descripción de los Scripts

Los scripts están organizados por categorías según su funcionalidad:

### Conversión y Gestión de Medios
*   `videos_ffmpeg.sh`: Convierte archivos `.mp4` a `.divx` (AVI), optimizado específicamente para compatibilidad con hardware antiguo (como radios de vehiculos como el BOSS BV9967B).
*   `videos_cp.sh`: Automatiza la copia y organización de archivos de video optimizados.
*   `music_cp.sh`: Gestiona la copia y organización de bibliotecas de música.
*   `short_mp3.sh`: Permite recortar segmentos específicos de archivos MP3.

### Captura de Pantalla
*   `byzanz.sh`: Graba una sección de la pantalla y genera un archivo GIF utilizando `byzanz-record`.
*   `byzanz-ffmpeg.sh`: Captura la pantalla y exporta a formato WebP utilizando la potencia de `ffmpeg` y `x11grab`.

### Mantenimiento del Sistema
*   `clean_snap.sh`: Libera espacio en disco eliminando versiones antiguas y obsoletas de los paquetes instalados vía Snap.
*   `wowza-restart.sh`: Reinicia el servidor de streaming Wowza de manera rápida y segura.
*   `StopSimpleScreenRecorder.sh`: Finaliza el proceso de SimpleScreenRecorder de forma controlada.

## Guía de Uso

Para utilizar cualquiera de los scripts, siga estos pasos:

1.  **Clonar el repositorio**:
    ```bash
    git clone <url-del-repositorio>
    cd <nombre-del-directorio>
    ```

2.  **Asignar permisos de ejecución**:
    Antes de ejecutar un script por primera vez, debe otorgarle permisos de ejecución al archivo:
    ```bash
    chmod +x nombre_del_script.sh
    ```

3.  **Ejecutar el script**:
    ```bash
    ./nombre_del_script.sh [argumentos]
    ```

## Licencia

Este proyecto está distribuido bajo la licencia MIT. Consulte el archivo `LICENSE` para más detalles.
