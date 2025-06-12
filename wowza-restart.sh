#!/bin/bash

# 0 6 * * sun /home/scripts/wowza-restart.sh

TODAY=$(date)

DATE_START=$(date '+%Y-%m-%d %H:%M:%S')

echo " *** START -> $0 $DATE_START --> $TODAY *** "

echo "# Start and stop Wowza Streaming Engine as a service"
service WowzaStreamingEngine stop
service WowzaStreamingEngine start

echo "# Start and stop Wowza Streaming Engine Manager as a service"
service WowzaStreamingEngineManager stop
service WowzaStreamingEngineManager start

DATE_END=$(date '+%Y-%m-%d %H:%M:%S')
echo " *** END -> $0 $DATE_END --> $TODAY *** "

echo "*** [$TODAY] Se ha reiniado el servicio de wowza iniciado el $DATE_START y terminando el  $DATE_END $TODAY ***" | mail -s "Reinicio de servicio Wowza" mauricio@logicideas.co,rafael@logicideas.co