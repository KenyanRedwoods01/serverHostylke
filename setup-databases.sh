#!/bin/bash

# MySQL setup for hosting
sudo mysql -e "CREATE DATABASE IF NOT EXISTS hostlyke_control;"
sudo mysql -e "CREATE USER IF NOT EXISTS 'hostlyke_admin'@'localhost' IDENTIFIED BY 'secure_password';"
sudo mysql -e "GRANT ALL PRIVILEGES ON hostlyke_control.* TO 'hostlyke_admin'@'localhost';"
sudo mysql -e "FLUSH PRIVILEGES;"

# PostgreSQL setup
sudo -u postgres psql -c "CREATE DATABASE hostlyke_control;"
sudo -u postgres psql -c "CREATE USER hostlyke_admin WITH PASSWORD 'redwoods6564M@';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE hostlyke_control TO hostlyke_admin;"

echo "✅ Databases setup complete"
