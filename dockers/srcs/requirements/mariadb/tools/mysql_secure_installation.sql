ALTER USER root@localhost IDENTIFIED BY '$ROOT_PASS');

DELETE FROM mysql.user WHERE User='';

DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';

FLUSH PRIVILEGES;
