#!/usr/bin/env sh

ip=`ifconfig en0|grep "inet "|awk '{print $2}'|awk '{print $1}'`

filename=conf/broker2.conf

rm -rf $filename
cat conf/broker2-template.conf | sed 's/\%ip/'$ip'/g' >> $filename
docker compose -f docker-compose-cluster2.yml up
