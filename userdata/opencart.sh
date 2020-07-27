#!/bin/bash
sudo apt-get update
sudo apt-add-repository -y ppa:ondrej/php
sudo apt-get update
sudo apt install -y php7.4
sudo apt install -y php7.4-{bcmath,bz2,intl,gd,mbstring,mysql,zip,curl,xml,dev}
sudo apt install -y apache2
sudo apt install -y libapache2-mod-php
sudo apt install -y libmcrypt-dev
sudo apt-get -y install unzip
wget https://github.com/opencart/opencart/releases/download/3.0.3.5/opencart-3.0.3.5.zip
sudo mkdir /var/www/opencart.avidemo.fr/
sudo unzip opencart-3.0.3.5.zip -d /var/www/opencart.avidemo.fr/
sudo mv /var/www/opencart.avidemo.fr/upload/config-dist.php /var/www/opencart.avidemo.fr/upload/config.php
sudo mv /var/www/opencart.avidemo.fr/upload/.htaccess.txt /var/www/opencart.avidemo.fr/upload/.htaccess
sudo mv /var/www/opencart.avidemo.fr/upload/admin/config-dist.php /var/www/opencart.avidemo.fr/upload/admin/config.php
sudo rm -f /var/www/opencart.avidemo.fr/*
sudo mv -f /var/www/opencart.avidemo.fr/upload/* /var/www/opencart.avidemo.fr/
sudo mv -f /var/www/opencart.avidemo.fr/upload/.* /var/www/opencart.avidemo.fr/
sudo rmdir /var/www/opencart.avidemo.fr/upload/
sudo chmod -R 755 /var/www/opencart.avidemo.fr/
sudo chown -R www-data:www-data /var/www/opencart.avidemo.fr/
echo "cloud init done" | tee /tmp/cloudInitDone.log
