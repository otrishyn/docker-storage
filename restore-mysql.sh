#!/usr/bin/env bash

export DATE=${1:-`date +%Y-%m-%d`}

# Restore
docker-compose exec -e DATE mysql-server bash -c "./mysql-restore.sh futurum"
docker-compose exec -e DATE mysql-server bash -c "./mysql-restore.sh futurum_cc"
