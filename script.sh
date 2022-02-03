#!/bin/bash

sudo apt-get install apache2 mariadb-server -y
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update -y
sudo apt-get install php7.2 libapache2-mod-php7.2 php7.2-common php7.2-mbstring php7.2-xmlrpc php7.2-soap php7.2-gd php7.2-xml php7.2-intl php7.2-mysql php7.2-cli php7.2-mcrypt php7.2-zip php7.2-curl -y

sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl start mysql
sudo systemctl enable mysql

echo -e "\ny\ny\nhari@123\nhari@123\ny\ny\ny\ny" | ./usr/bin/mysql_secure_installation

mysql -e "CREATE DATABASE mediadb"
mysql -e "CREATE USER 'media'@'localhost' IDENTIFIED BY 'mediapazz'"
mysql -e "GRANT ALL ON mediadb.* TO 'media'@'localhost' IDENTIFIED BY 'mediapazz' WITH GRANT OPTION"
mysql -e "FLUSH PRIVILEGES"


wget https://releases.wikimedia.org/mediawiki/1.31/mediawiki-1.31.0.tar.gz

tar -xvzf mediawiki-1.31.0.tar.gz

sudo cp -r mediawiki-1.31.0 /var/www/html/mediawiki
sudo chown -R www-data:www-data /var/www/html/mediawiki
sudo chmod -R 777 /var/www/html/mediawiki

cd /var/www/html/
rm index.html

cd /etc/apache2/sites-enabled/
rm 000-default.conf

touch /etc/apache2/sites-enabled/mediawiki.conf

cd /etc/apache2/sites-enabled/


echo "<VirtualHost *:80>" >> mediawiki.conf
echo "DocumentRoot /var/www/html/mediawiki/" >> mediawiki.conf
echo "<Directory /var/www/html/mediawiki/>" >> mediawiki.conf
echo "Options +FollowSymLinks" >> mediawiki.conf
echo "AllowOverride All" >> mediawiki.conf
echo "</Directory>" >> mediawiki.conf
echo "ErrorLog /var/log/apache2/media-error_log" >> mediawiki.conf
echo "CustomLog /var/log/apache2/media-access_log common" >> mediawiki.conf
echo "</VirtualHost>" >> mediawiki.conf

sudo a2ensite mediawiki.conf
sudo a2enmod rewrite
sudo systemctl restart apache2
