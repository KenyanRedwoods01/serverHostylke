#!/bin/bash

echo "🚀 Setting up PURE HOSTING SERVER..."

# Update system
sudo apt update && sudo apt upgrade -y

# INSTALL WEB SERVERS
sudo apt install nginx apache2 -y

# INSTALL ALL PHP VERSIONS
sudo apt install php php-fpm php-cli \
                php-mysql php-pgsql php-sqlite3 \
                php-curl php-gd php-mbstring \
                php-xml php-zip php-json -y

# INSTALL PYTHON FOR APPS
sudo apt install python3 python3-pip python3-venv -y

# INSTALL DATABASES
sudo apt install mysql-server postgresql sqlite3 redis -y

# INSTALL RUNTIMES
sudo apt install nodejs npm -y  # For Node.js apps
sudo apt install openjdk-17-jdk -y  # For Java apps
sudo apt install golang-go -y  # For Go apps

# INSTALL VERSION CONTROL
sudo apt install git -y

# INSTALL PROCESS MANAGERS
npm install -g pm2
pip3 install gunicorn

# CREATE HOSTING DIRECTORY STRUCTURE
sudo mkdir -p /var/www/{clients,backups,logs,templates}
sudo mkdir -p /var/www/clients/{sites,databases,emails}
sudo mkdir -p /etc/hostlyke/{nginx,apache,ssl}

# SET PERMISSIONS
sudo chown -R $USER:$USER /var/www
sudo chmod -R 755 /var/www

echo "✅ PURE HOSTING SERVER SETUP COMPLETE!"
