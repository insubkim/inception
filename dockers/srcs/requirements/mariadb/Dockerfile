FROM alpine:3.18

RUN apk add --no-cache mariadb mariadb-client openrc

COPY mysql_secure_installation.sql /home/
COPY mariadb-server.cnf /etc/my.cnf.d/
COPY create_wordpressdb_user.sql /home/
COPY start_mariadb.sh /home

EXPOSE 3306

ENTRYPOINT ["sh", "/home/start_mariadb.sh"]
