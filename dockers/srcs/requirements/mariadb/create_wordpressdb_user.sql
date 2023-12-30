create database wordpress;

create user WORDPRESS_DB_USER@'%' identified by WORDPRESS_DB_PASS;

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER, CREATE TEMPORARY TABLES, CREATE VIEW, EVENT, TRIGGER, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EXECUTE ON wordpress.* TO WORDPRESS_DB_USER@'%';

FLUSH PRIVILEGES;
