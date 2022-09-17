#! /bin/bash

# mysql
echo "- installing mysql"
echo "-- installing wget"
sudo apt -y install wget
echo "-- get package"
wget https://dev.mysql.com/get/mysql-apt-config_0.8.20-1_all.deb
echo "-- installing package"
sudo apt install ./mysql-apt-config_0.8.20-1_all.deb
echo "-- installing mysql"
sudo apt update
sudo apt install mysql-server
echo "-- enabling mysql"
sudo systemctl enable --now mysql
echo "-- status mysql"
sudo sustemctl status mysql
echo "-- securing database"
sudo mysql_secure_installation

# TODO
# correr la instalacion de seguridad

echo "- mysql done!"