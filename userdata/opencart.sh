#!/bin/bash
sudo apt-get update
# sudo apt install -y mysql-server
# sudo apt install -y python3-pymysql
sudo apt-add-repository -y ppa:ondrej/php
sudo apt-get update
sudo apt install -y php7.4
sudo apt install -y php7.4-{bcmath,bz2,intl,gd,mbstring,mysql,zip,curl,xml,dev}
sudo apt install -y apache2
sudo apt install -y libapache2-mod-php
sudo apt install -y libmcrypt-dev
sudo apt-get -y install unzip
wget ${opencartDownloadUrl}
sudo mkdir /var/www/${aviVsOpencart}.${domainName}/
sudo unzip opencart-3.0.3.5.zip -d /var/www/${aviVsOpencart}.${domainName}/
sudo mv /var/www/${aviVsOpencart}.${domainName}/upload/config-dist.php /var/www/${aviVsOpencart}.${domainName}/upload/config.php
sudo mv /var/www/${aviVsOpencart}.${domainName}/upload/.htaccess.txt /var/www/${aviVsOpencart}.${domainName}/upload/.htaccess
sudo mv /var/www/${aviVsOpencart}.${domainName}/upload/admin/config-dist.php /var/www/${aviVsOpencart}.${domainName}/upload/admin/config.php
sudo rm -f /var/www/${aviVsOpencart}.${domainName}/*
sudo mv -f /var/www/${aviVsOpencart}.${domainName}/upload/* /var/www/${aviVsOpencart}.${domainName}/
sudo mv -f /var/www/${aviVsOpencart}.${domainName}/upload/.* /var/www/${aviVsOpencart}.${domainName}/
sudo rmdir /var/www/${aviVsOpencart}.${domainName}/upload/
sudo chmod -R 755 /var/www/${aviVsOpencart}.${domainName}/
sudo chown -R www-data:www-data /var/www/${aviVsOpencart}.${domainName}/
echo "cloud init done" | tee /tmp/cloudInitDone.log
