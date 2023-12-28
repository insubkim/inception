
mkdir -p /usr/share/webapps/
cd /usr/share/webapps/
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm latest.tar.gz

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

php-fpm81 -F;
