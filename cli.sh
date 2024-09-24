#!/bin/bash
docker compose  --env-file environments/.env.$1 --project-name $1 -f compose/apps.connect.yml -f compose/apps.switchboard.yml -f compose/services.yml -f compose/monitoring.yml pull

docker compose  --env-file environments/.env.$1 --project-name $1 -f compose/apps.connect.yml -f compose/apps.switchboard.yml -f compose/services.yml -f compose/monitoring.yml $2 $3 $4 $5 $6 $7 $8 $9
