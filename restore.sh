#!/usr/bin/env bash

export DATE=${1:-`date +%Y-%m-%d`}
./restore-mysql.sh $DATE
./restore-mongo.sh $DATE