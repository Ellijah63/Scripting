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
