#!/bin/bash

echo "🧪 Testing hosting setup..."

# Test PHP
php -v
echo "<?php echo 'PHP is working!'; ?>" > /var/www/test.php
sudo chown www-data:www-data /var/www/test.php

# Test MySQL
mysql -u hostlyke_admin -predwoods6564M@ -e "SHOW DATABASES;"

# Test PostgreSQL
sudo -u postgres psql -c "\l"

# Test Nginx
sudo nginx -t

# Create test site
sudo mkdir -p /var/www/clients/sites/test1/public
echo "<h1>HostlyKE Hosting Works! 🚀</h1>" | sudo tee /var/www/clients/sites/test1/public/index.html
echo "<?php phpinfo(); ?>" | sudo tee /var/www/clients/sites/test1/public/info.php

echo "✅ Hosting setup test complete!"
echo "📧 Access your test site at: http://localhost"
