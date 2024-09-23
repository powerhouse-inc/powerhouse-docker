#!/bin/bash

# /**
#     * This script is used to start the docker compose files for the branch
#     * 
#     * Usage: ./cli.sh <start|stop> <branch_name=develop>
#     * 
#     * Example: ./cli.sh start develop
#     */

# Check if the branch is provided
if [ -z "$2" ]
then
    echo "Please provide the branch name as an argument"
    exit 1
fi


if [ "$1" == "up" ]
then
    docker compose --env-file .env.$2 -f monitoring.compose.yml up  -d 
    docker compose --env-file .env.$2 -f services.compose.yml up  -d 
    docker compose --env-file .env.$2 -f apps.switchboard.compose.yml up  -d 
    docker compose --env-file .env.$2 -f apps.connect.compose.yml up  -d 
    exit 0
else
    echo "Stopping the docker compose files"
    docker compose  --env-file .env.$2 -f apps.switchboard.compose.yml down -v
    docker compose  --env-file .env.$2 -f apps.connect.compose.yml down -v
    docker compose  --env-file .env.$2 -f services.compose.yml down -v
    docker compose  --env-file .env.$2 -f monitoring.compose.yml down -v
    exit 1
fi


