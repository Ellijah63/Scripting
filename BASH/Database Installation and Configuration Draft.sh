#!/bin/bash
# Firewall Installation
sudo dnf install firewalld
sudo systemctl enable --now firewalld
sudo firewall-cmd --state

# MariaDB Install
sudo dnf install mariadb-server -y
sudo systemctl enable --now mariadb
systemctl status mariadb
sudo firewall-cmd --permanent --zone=public --add-port=3306/tcp
sudo firewall-cmd --reload
sudo firewall-cmd --list-ports --zone=public

# MariaDB Configuration
sudo mysql
CREATE DATABASE mydb;
CREATE USER 'user'@'localhost' IDENTIFIED BY 'userpassword'; #'user'@'localhost' multi node setup
GRANT ALL PRIVILEGES ON *.* TO 'ecomuser'@'localhost';
FLUSH PRIVILEGES;
exit

# MariaDB Loading Database
mysql
USE mydb;
CREATE TABLE key () AUTO_INCREMENT=1;
INSERT INTO key () VALUES (),(),();
sudo mysql -e "use mydb, select * from key;"



