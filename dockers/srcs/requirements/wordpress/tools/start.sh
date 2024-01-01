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
	cd /usr/share/webapps/
	wget https://wordpress.org/latest.tar.gz
	tar -xzvf latest.tar.gz
	rm latest.tar.gz

	# set wordpress database
	sh /root/set-database.sh

	# set wordpress website
	#wp cli
fi


php-fpm81 -F;
