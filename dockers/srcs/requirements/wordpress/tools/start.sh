
mkdir -p /usr/share/webapps/
cd /usr/share/webapps/
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm latest.tar.gz
ln -s /usr/share/webapps/wordpress/ /var/www/localhost/htdocs/wordpress

# check mariadb
while true ; do
	result=$(nmap mariadb -p 3306 | grep open | wc -l)

	if [[ $result -ge 1 ]]; then
		echo "port 3306 mariadb open"
		break
	else
		echo "wordpress: mariadb container not on";
		sleep 1
	fi
done

php81-fpm -f;