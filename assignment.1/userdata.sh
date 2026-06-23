#!/bin/bash
dnf update -y

# Install Apache, PHP and required extensions
dnf install -y httpd wget php php-mysqlnd php-fpm php-json php-devel \
php-mbstring php-xml php-gd php-curl php-intl php-zip

# Start and enable Apache
systemctl enable httpd
systemctl start httpd

# Download WordPress
cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz

# Copy WordPress files
cp -r wordpress/* /var/www/html/

# Set permissions
chown -R apache:apache /var/www/html
find /var/www/html -type d -exec chmod 755 {} \;
find /var/www/html -type f -exec chmod 644 {} \;

# Restart Apache
systemctl restart httpd

# Create health check page
echo "WordPress installation completed" > /var/www/html/health.html