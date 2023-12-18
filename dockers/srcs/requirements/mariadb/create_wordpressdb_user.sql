create database wordpress;

create user 'wordpressuser'@'%' identified by '{insub123}';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER, CREATE TEMPORARY TABLES, CREATE VIEW, EVENT, TRIGGER, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EXECUTE ON wordpress.* TO 'wordpressuser'@'%';

FLUSH PRIVILEGES;
