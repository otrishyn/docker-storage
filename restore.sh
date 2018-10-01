#!/usr/bin/env bash

docker-compose exec mysql-server bash -c "cd ${PROVISIONING_PATH:-provisioning}; cd dump/`date +\%Y-\%m-\%d`; ../../mysql-restore.sh futurum"
docker-compose exec mysql-server bash -c "cd ${PROVISIONING_PATH:-provisioning}; cd dump/`date +\%Y-\%m-\%d`; ../../mysql-restore.sh futurum_cc"

docker-compose exec mongo-server26 bash -c "cd ${PROVISIONING_PATH:-provisioning}; cd dump/`date +\%Y-\%m-\%d`; sh ../../mongo-restore.sh futurum"
docker-compose exec mongo-server26 bash -c "cd ${PROVISIONING_PATH:-provisioning}; cd dump/`date +\%Y-\%m-\%d`; sh ../../mongo-restore.sh futurum_cc"