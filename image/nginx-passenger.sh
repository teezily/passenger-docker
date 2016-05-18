#!/bin/bash
set -e
source /pd_build/buildconfig
source /etc/environment
set -x

apt-get install -y nginx-extras

cp /pd_build/config/nginx.conf /etc/nginx/nginx.conf
mkdir -p /etc/nginx/main.d
cp /pd_build/config/nginx_main_d_default.conf /etc/nginx/main.d/default.conf

## Install Nginx runit service.
mkdir /etc/service/nginx
cp /pd_build/runit/nginx /etc/service/nginx/run
touch /etc/service/nginx/down

mkdir /etc/service/nginx-log-forwarder
cp /pd_build/runit/nginx-log-forwarder /etc/service/nginx-log-forwarder/run

mkdir /etc/service/nginx-access-log-forwarder
cp /pd_build/runit/nginx-access-log-forwarder /etc/service/nginx-access-log-forwarder/run
