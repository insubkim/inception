#ALTER USER root@localhost IDENTIFIED VIA mysql_native_password USING PASSWORD("insub123");

#DELETE FROM mysql.user WHERE User='';

#DROP DATABASE IF EXISTS test;
#DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';

#FLUSH PRIVILEGES;
yes | mysql_secure_installation
