ALTER USER root@localhost IDENTIFIED VIA mysql_native_password USING PASSWORD("$ROOT_PASS");

DELETE FROM mysql.user WHERE User='';

DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';

FLUSH PRIVILEGES;
