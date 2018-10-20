#!/usr/bin/env bash

./restore-mysql.sh ${1:-`date +%Y-%m-%d`}
./restore-mongo.sh ${1:-`date +%Y-%m-%d`}