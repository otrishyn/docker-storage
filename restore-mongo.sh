#!/usr/bin/env bash

docker-compose exec -e ${1:-`date +%Y-%m-%d`} ${MONGOSERVER:-mongo-server24} bash -c "./mongo-restore.sh futurum"
docker-compose exec -e ${1:-`date +%Y-%m-%d`} ${MONGOSERVER:-mongo-server24} bash -c "./mongo-restore.sh futurum_cc"