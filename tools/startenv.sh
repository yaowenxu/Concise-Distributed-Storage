#!/bin/bash

GOROOT=/usr/bin/go
GOPATH=/home/yaowen/go
export RABBITMQ_SERVER=amqp://yaoxu:yaoxu@192.168.5.222:5672

LISTEN_ADDRESS=192.168.5.223:12345 STORAGE_ROOT=/tmp/1 go run $1/dataContainer/dataContainer.go &
LISTEN_ADDRESS=192.168.5.224:12345 STORAGE_ROOT=/tmp/2 go run $1/dataContainer/dataContainer.go &
LISTEN_ADDRESS=192.168.5.225:12345 STORAGE_ROOT=/tmp/3 go run $1/dataContainer/dataContainer.go &
LISTEN_ADDRESS=192.168.5.226:12345 STORAGE_ROOT=/tmp/4 go run $1/dataContainer/dataContainer.go &
LISTEN_ADDRESS=192.168.5.227:12345 STORAGE_ROOT=/tmp/5 go run $1/dataContainer/dataContainer.go &
LISTEN_ADDRESS=192.168.5.228:12345 STORAGE_ROOT=/tmp/6 go run $1/dataContainer/dataContainer.go &

LISTEN_ADDRESS=192.168.5.229:12345 go run $1/apiContainer/apiContainer.go &
LISTEN_ADDRESS=192.168.5.230:12345 go run $1/apiContainer/apiContainer.go &
