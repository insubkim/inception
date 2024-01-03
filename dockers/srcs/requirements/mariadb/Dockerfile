FROM alpine:3.18

RUN apk add --no-cache mariadb mariadb-client openrc

COPY ./tools/mysql_secure_installation.sql /root/
COPY ./conf/mariadb-server.cnf /etc/my.cnf.d/
COPY ./tools/create_database.sql /root/
COPY ./tools/create_wordpressdb_user.sql /root/
COPY ./tools/start_mariadb.sh /root/

EXPOSE 3306

ENTRYPOINT ["sh", "/root/start_mariadb.sh"]
