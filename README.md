# Powerhouse Docker Repository

This repository provides a small cli to start and stop a Powerhouse environment on docker.

The repository contains not only docker compose files for the Powerhouse Apps such as Connect and Switchboard, but also compose files for the required services PostgreSQL and Redis and for monitoring tools based on the Grafana Stack.

## Create an Environment

Copy the `.env.example` in the `environments` directory and name it like the branch / release you want to start ie: `.env.develop, .env.staging, .env.1.0.0-rc.1, ...`

## Start / Stop an Environment

To start run `pnpm compose <branch|tag> up -d`

To stop run `pnpm compose <branch|tag> down -v`

Get status information with: `pnpm compose <branch|tag> status`

You can run multiple environments in parallel if you customize the Public Ports in the dotenv files to avoid conflicts.

## More Information

We recommend to read the docker compose files in the compose directory. There you'll find also the credentials to access Grafana and the database.
