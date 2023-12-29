rc default

/etc/init.d/mariadb setup

rc-service mariadb start

mysql -u root -p < /home/mysql_secure_installation.sql

mysql -u root -p$ROOT_PASS < /home/create_wordpressdb_user.sql
# mariadb mysqldb install 
# mariadb-openrc

rc-service mariadb stop

/usr/bin/mysqld_safe
