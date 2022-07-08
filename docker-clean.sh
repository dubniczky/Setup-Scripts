#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Remove all containers from the system


## Stop all containers
docker kill --signal "KILL" $(docker ps -aq)

## Remove containers and images
docker system prune -a --force

## Remove all volumes
docker volume prune --force
