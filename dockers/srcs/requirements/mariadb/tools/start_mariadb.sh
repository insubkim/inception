rc default

/etc/init.d/mariadb setup

rc-service mariadb start


sed -i "s/ROOT_PASS/$ROOT_PASS/" /root/mysql_secure_installation.sql
mysql -u root < /root/mysql_secure_installation.sql

mysql -u root -p$ROOT_PASS < /root/create_database.sql
sed -i "s/WORDPRESS_DB_USER/$WORDPRESS_DB_USER/" /root/create_wordpressdb_user.sql
sed -i "s/WORDPRESS_DB_PASS/$WORDPRESS_DB_PASS/" /root/create_wordpressdb_user.sql
mysql -u root -p$ROOT_PASS < /root/create_wordpressdb_user.sql

rc-service mariadb stop

/usr/bin/mysqld_safe
