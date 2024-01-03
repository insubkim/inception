rc default

/etc/init.d/mariadb setup

rc-service mariadb start


sed -i "s/ROOT_PASS/$ROOT_PASS/" /app/mysql_secure_installation.sql
mysql -u root < /app/mysql_secure_installation.sql

mysql -u root -p$ROOT_PASS < /app/create_database.sql
sed -i "s/WORDPRESS_DB_USER/$WORDPRESS_DB_USER/" /app/create_wordpressdb_user.sql
sed -i "s/WORDPRESS_DB_PASS/$WORDPRESS_DB_PASS/" /app/create_wordpressdb_user.sql
mysql -u root -p$ROOT_PASS < /app/create_wordpressdb_user.sql

rc-service mariadb stop

/usr/bin/mysqld_safe
