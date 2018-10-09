#!/usr/bin/env bash

export DATE=${1:-`date +%Y-%m-%d`}

# Restore
docker-compose exec -e DATE mysql-server bash -c "./mysql-restore.sh futurum"
docker-compose exec -e DATE mysql-server bash -c "./mysql-restore.sh futurum_cc"

docker-compose exec -e DATE mongo-server26 bash -c "./mongo-restore.sh futurum"
docker-compose exec -e DATE mongo-server26 bash -c "./mongo-restore.sh futurum_cc"