# check mariadb
while true ; do
	result=$(nmap mariadb -p 3306 | grep open | wc -l)

	if [[ $result -ge 1 ]]; then
		echo "port 3306 mariadb open"
		break
	else
		echo "wordpress: mariadb container not on";
	fi
done

if [ ! -f "/var/www/html/wordpress/index.php" ]; then
	# download wordpress
	mkdir -p /var/www/html/wordpress
	
	cd /var/www/html/wordpress
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/local/bin/wp
	wp core download 
	wp core config --dbhost=mariadb --dbname=wordpress --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASS
	#chmod 777 /usr
	#chmod 777 /usr/share
	#chmod 777 /usr/share/webapps
	#chmod 777 /usr/share/webapps/wordpress
	#chmod 777 /usr/share/webapps/wordpress/*
	wp core install --url=$WP_URL --title=$WP_TITLE --admin_name=$WP_GOD --admin_password=$WP_GOD_PASS --admin_email=$WP_GOD_EMAIL
	wp user create $WP_USR1 $WP_USR1_EMAIL --role=author --user_pass=$WP_USR1_PASS
fi


php-fpm81 -F;
