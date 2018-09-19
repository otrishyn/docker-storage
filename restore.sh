#!/usr/bin/env bash

export PROVISIONING_PATH='~/Code/provisioning'
docker-compose exec mysql-server bash -c "cd ${PROVISIONING_PATH}; ./mysql-restore.sh futurum"
docker-compose exec mysql-server bash -c "cd ${PROVISIONING_PATH}; ./mysql-restore.sh futurum_cc"

docker-compose exec mongo-server26 bash -c "cd ${PROVISIONING_PATH}; ./mongo-restore.sh futurum"
docker-compose exec mongo-server26 bash -c "cd ${PROVISIONING_PATH}; ./mongo-restore.sh futurum_cc"