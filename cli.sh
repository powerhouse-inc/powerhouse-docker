#!/bin/bash
docker compose  --env-file environments/.env.$2 --project-name $2 -f compose/apps.connect.yml -f compose/apps.switchboard.yml -f compose/services.yml -f compose/monitoring.yml $1 $3
