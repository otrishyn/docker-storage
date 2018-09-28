#!/usr/bin/env bash

export DESTINATION=${PROVISIONING_PATH:-$HOME/Code/provisioning}/dump/`date +\%Y-\%m-\%d`/;
mkdir -p $DESTINATION; rsync testing:/data/www/dump/*`date +\%Y-\%m-\%d`* $DESTINATION