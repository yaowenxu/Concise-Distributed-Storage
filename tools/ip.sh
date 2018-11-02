#!/bin/bash

ifconfig enp4s0:1 192.168.5.223 netmask 255.255.255.0 up
ifconfig enp4s0:2 192.168.5.224 netmask 255.255.255.0 up
ifconfig enp4s0:3 192.168.5.225 netmask 255.255.255.0 up
ifconfig enp4s0:4 192.168.5.226 netmask 255.255.255.0 up
ifconfig enp4s0:5 192.168.5.227 netmask 255.255.255.0 up
ifconfig enp4s0:6 192.168.5.228 netmask 255.255.255.0 up
ifconfig enp4s0:7 192.168.5.229 netmask 255.255.255.0 up
ifconfig enp4s0:8 192.168.5.230 netmask 255.255.255.0 up

# go get "github.com/streadway/amqp"