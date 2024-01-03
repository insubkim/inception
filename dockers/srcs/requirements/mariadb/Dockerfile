FROM alpine:3.18

RUN apk add --no-cache mariadb mariadb-client openrc
RUN mkdir /app

COPY ./tools/mysql_secure_installation.sql /app/
COPY ./conf/mariadb-server.cnf /etc/my.cnf.d/
COPY ./tools/create_database.sql /app/
COPY ./tools/create_wordpressdb_user.sql /app/
COPY ./tools/start_mariadb.sh /app/

EXPOSE 3306

ENTRYPOINT ["sh", "/app/start_mariadb.sh"]
