#!/bin/bash

## 설치
sudo apt install mysql-server mysql-client

##설정
sudo mysql -u root -p -e '\
CREATE USER testuser; \
GRANT ALL PRIVILEGES ON *.* TO 'testuser'@'%' IDENTIFIED BY 'passw0rd'; \
FLUSH PRIVILEGES;
'
#ALTER USER 'testuser'@'%' IDENTIFIED BY 'passw0rd';

sudo mysql -u root -e '\
CREATE SCHEMA dev_immigration DEFAULT CHARACTER SET utf8mb4;
CREATE SCHEMA dev_elemhant DEFAULT CHARACTER SET utf8mb4;
'
sudo sed -i 's@bind-address\s\+=\s*127.0.0.1$@bind-address = *@' /etc/mysql/mysql.conf.d/mysqld.cnf

sudo systemctl restart mysql

## 설치
sudo apt install rabbitmq-server
#rabbitmq-plugins enable rabbitmq_management
## 설정
sudo rabbitmqctl add_user testuser passw0rd;

sudo rabbitmqctl add_vhost /dev_immigration;
sudo rabbitmqctl set_permissions -p /dev_immigration testuser ".*" ".*" ".*"

sudo rabbitmqctl add_vhost /dev_elemhant;
sudo rabbitmqctl set_permissions -p /dev_elemhant testuser ".*" ".*" ".*"

## 설치
sudo apt install redis-server
## 설정
sudo sed -i 's@bind 127.0.0.1 ::1@bind 0.0.0.0@' /etc/redis/redis.conf
sudo sed -i 's@# requirepass foobared@requirepass passw0rd@' /etc/redis/redis.conf

sudo systemctl restart redis-server