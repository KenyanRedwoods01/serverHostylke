#!/bin/bash

echo "🚀 Starting hosting services..."

# Start MySQL
sudo systemctl start mysql
sudo systemctl enable mysql

# Start PostgreSQL
sudo systemctl start postgresql
sudo systemctl enable postgresql

# Start Redis
sudo systemctl start redis-server
sudo systemctl enable redis-server

# Start PHP-FPM
sudo systemctl start php8.1-fpm
sudo systemctl enable php8.1-fpm

# Start Nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Start Apache (optional)
sudo systemctl stop apache2  # We'll use Nginx primarily

echo "✅ All hosting services started!"
echo "🌐 Nginx running on port 80"
echo "🐘 MySQL running on port 3306"
echo "🐘 PostgreSQL running on port 5432"
echo "🔴 Redis running on port 6379"
echo "🐘 PHP-FPM running"
