#!/usr/bin/env sh

ip=`ifconfig en0|grep "inet "|awk '{print $2}'|awk '{print $1}'`

# echo $ip
filename=conf/broker.conf

rm -rf $filename
cat conf/broker-template.conf | sed 's/\%ip/'$ip'/g' >> $filename
docker compose up
