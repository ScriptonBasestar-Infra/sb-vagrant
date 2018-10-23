#!/bin/bash

sudo apt install mysql-server mysql-client


sudo apt install rabbitmq-server

rabbitmq-plugins
rabbitmqctl

sudo apt install redis-server
sudo sed -i 's@@@' /etc/apt/sources.list