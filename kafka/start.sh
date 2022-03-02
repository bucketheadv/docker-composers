#!/usr/bin/env sh

ip=`ifconfig en0|grep "inet "|awk '{print $2}'|awk '{print $1}'`

# echo $ip

rm -rf docker-compose.yml
cat docker-compose-template.yml | sed 's/\%s/'$ip'/g' >> docker-compose.yml
docker compose up
