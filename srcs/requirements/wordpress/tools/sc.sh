#!/bin/bash

if [ -f ./wp-config.php ];
then
    echo "Wordpress is already installed"
else
    cd /var/www
    cd wordpress
    wp core download  --allow-root
    wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=mariadb --allow-root 
    wp core install --url=$DOMAIN_NAME --title="inception" --admin_user=$DB_USER --admin_password=$DB_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root --path=/var/www/wordpress
    wp user create $USER $USER_EMAIL --role=author --user_pass=$USER_PASSWORD --allow-root --path=/var/www/wordpress
    echo "Wordpress is installed"
fi

exec php-fpm7.4 -F
