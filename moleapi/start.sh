#!/usr/bin/env sh

docker run --name new-api -d --restart always \
  -p 4000:3000 \
  -e TZ=Asia/Shanghai \
  -v "$(pwd)"/data:/data \
  calciumion/new-api:latest

