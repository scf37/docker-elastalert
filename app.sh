#!/bin/bash

mkdir /data/conf
cp -rn /opt/conf/* /data/conf

cd /data/conf
elastalert-create-index
exec elastalert $@