#!/usr/bin/env bash

export DESTINATION=${PROVISIONING_PATH:-$HOME/Code/provisioning}/dump/;
mkdir -p $DESTINATION; rsync -vazuP testing:/data/www/dump/*${DATE:-`date +\%Y-\%m-\%d`}* $DESTINATION