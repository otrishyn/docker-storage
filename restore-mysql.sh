#!/usr/bin/env bash

docker-compose exec -e ${1:-`date +%Y-%m-%d`} ${MYSQLSERVER:-mysql-server} bash -c "./mysql-restore.sh futurum"
docker-compose exec -e ${1:-`date +%Y-%m-%d`} ${MYSQLSERVER:-mysql-server} bash -c "./mysql-restore.sh futurum_cc"
