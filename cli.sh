#!/bin/bash
docker compose  --env-file environments/.env.$1 --project-name $1 -f compose/apps.connect.yml -f compose/apps.switchboard.yml -f compose/services.yml -f compose/monitoring.yml $2
