#!/bin/bash
sudo docker swarm init --advertise-addr=10.10.10.100
sudo docker swarm join-token worker | grep docker > /vagrant/provision-worker.sh

# Create a container with mysql-server
sudo mkdir /data
sudo mkdir /data/mysql-v

sudo docker run --name db_mysql -e MYSQL_ROOT_PASSWORD=Senha123 -d --volume=/data/mysql-v:/var/lib/mysql -p 3306:3306 mysql:latest

# Install mysql-client on host
sudo apt-get install mysql-client -y
sudo apt-get clean
