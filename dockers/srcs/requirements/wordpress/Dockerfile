FROM alpine:3.18

RUN apk update && apk upgrade
RUN apk add php81 php81-fpm php81-opcache php81-gd php81-mysqli php81-zlib php81-curl wget mysql-client nmap

COPY ./conf/www.conf /etc/php81/php-fpm.d/www.conf
COPY ./tools/start.sh ~/start.sh

EXPOSE 9000

ENTRYPOINT ["sh", "~/start.sh"]

