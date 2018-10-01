#!/usr/bin/env bash

docker-compose exec mysql-server bash -c "./mysql-restore.sh futurum"
docker-compose exec mysql-server bash -c "./mysql-restore.sh futurum_cc"

docker-compose exec mongo-server26 bash -c "./mongo-restore.sh futurum"
docker-compose exec mongo-server26 bash -c "./mongo-restore.sh futurum_cc"