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

if [ ! -f "/usr/share/webapps/wordpress/index.php" ]; then
	# download wordpress
	mkdir -p /usr/share/webapps/
	#cd /usr/share/webapps/
	#wget https://wordpress.org/latest.tar.gz
	#tar -xzvf latest.tar.gz
	#rm latest.tar.gz

	# set wordpress database
	sh /root/set-database.sh
	
	cd /usr/share/webapps/wordpress
	# set wordpress website
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/local/bin/wp
	wp core download --allow-root
	wp core install \
		--url=$WP_URL/ \
		--title=$WP_TITLE --admin_user=$WP_GOD \
		--admin_password=$WP_GOD_PASS \
		--admin_email=$WP_GOD_EMAIL \
		--skip-email --allow-root;
	wp user create $WP_USR1 $WP_USR1_EMAIL --role=author --user_pass=$WP_USR1_PASS --allow-root
fi


php-fpm81 -F;
