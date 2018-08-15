#!/usr/bin/env bash

INSTALL_DIR="/var/www/html"

#echo "hello world"

chown -R www-data:www-data /var/www
su www-data -c "cd $INSTALL_DIR && composer install"
su www-data -c "cd $INSTALL_DIR && composer config repositories.magento composer https://repo.magento.com/"  
cd $INSTALL_DIR
find . -type d -exec chmod 770 {} \;
find . -type f -exec chmod 660 {} \;
chmod u+x bin/magento    
cp shippable/developer/install-magento /usr/local/bin/install-magento
chmod +x /usr/local/bin/install-magento
cp shippable/developer/install-sampledata /usr/local/bin/install-sampledata
chmod +x /usr/local/bin/install-sampledata

echo "memory_limit=2048M" > /usr/local/etc/php/conf.d/memory-limit.ini
cd $INSTALL_DIR

# Add cron job
cp shippable/developer/crontab /etc/cron.d/magento2-cron
chmod 0644 /etc/cron.d/magento2-cron 
crontab -u www-data /etc/cron.d/magento2-cron   

a2enmod rewrite